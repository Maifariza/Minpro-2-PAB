import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:minpro2_mobile/main.dart';
import 'package:minpro2_mobile/models/product.dart';
import 'package:minpro2_mobile/pages/form_page.dart';

final supabase = Supabase.instance.client;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Product> products = [];
  String searchText = "";
  String selectedCategory = "All";
  final TextEditingController searchController = TextEditingController();

  final List<String> categories = [
    "All",
    "Skincare",
    "Makeup",
    "Parfum",
    "Bodycare",
    "Haircare",
  ];

  Future<void> fetchProducts() async {
    final data = await supabase
        .from('products')
        .select()
        .order('dipilih', ascending: false)
        .order('created_at', ascending: false);

    setState(() {
      products = data.map<Product>((item) {
        return Product(
          id: item['id'],
          name: item['nama'],
          category: item['kategori'],
          price: item['harga'],
          checked: item['dipilih'] ?? false,
        );
      }).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  int get totalChecked => products.where((p) => p.checked).length;

  List<Product> get filteredProducts {
    return products.where((p) {
      final matchCategory =
          selectedCategory == "All" || p.category == selectedCategory;
      final matchSearch =
          p.name.toLowerCase().contains(searchText.toLowerCase());
      return matchCategory && matchSearch;
    }).toList();
  }

  void openForm({Product? product}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            FormPage(isEdit: product != null, product: product),
      ),
    );

    if (result == true) {
      await fetchProducts();
      if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: pinkDark,
            content: Text(
              product == null
                  ? "Produk berhasil ditambahkan."
                  : "Produk berhasil diperbarui.",
              style: const TextStyle(
                color: Colors.white,
                fontFamily: "CloudLucent",
              ),
            ),
          ),
        );
        }
      }

  final formatRupiah = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  void showDeleteDialog(Product p) {
    final parentContext = context;
    showDialog(
      context: parentContext,
      builder: (dialogContext) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),

          child: SizedBox(
            width: 400,
            child: Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.white,
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.delete_outline,
                    color: pinkDark,
                    size: 40,
                  ),

                  const SizedBox(height: 12),
                  const Text(
                    "Hapus Produk?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                  const Text(
                    "Produk ini akan dihapus dari koleksi kamu ˙✮.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(dialogContext);
                        },
                        child: const Text("Batal"),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: pinkDark,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                        onPressed: () async {
                          Navigator.pop(dialogContext);
                          await supabase
                              .from('products')
                              .delete()
                              .eq('id', p.id);
                          await fetchProducts();
                          if (!mounted) return;

                          ScaffoldMessenger.of(parentContext).showSnackBar(
                            const SnackBar(
                              backgroundColor: pinkDark,
                              content: Text(
                                "Produk berhasil dihapus.",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        },
                        child: const Text("Hapus"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: pinkDark,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Container(
                    width: 320,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          color: pinkDark.withOpacity(0.2),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.arrow_back_rounded,
                          size: 50,
                          color: pinkDark,
                        ),

                        const SizedBox(height: 14),
                        const Text(
                          "Kembali ke Login?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "PlayfairDisplay",
                            fontWeight: FontWeight.bold,
                            color: pinkDark,
                          ),
                        ),

                        const SizedBox(height: 10),
                        const Text(
                          "Kalau kembali, kamu harus login lagi tau ( ˃̵ᴗ˂̵) ♡",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "CloudLucent",
                          ),
                        ),
                        const SizedBox(height: 22),

                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: pinkDark),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: const Text(
                                  "Batal",
                                  style: TextStyle(
                                    fontFamily: "CloudLucent",
                                    color: pinkDark,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 12),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushReplacementNamed(context, "/login");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: pinkDark,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: const Text(
                                  "Ya",
                                  style: TextStyle(
                                    fontFamily: "CloudLucent",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),

        flexibleSpace: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF9FC2),
                    Color(0xFFFFD6E6),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),

            Positioned(
              right: 40,
              top: 20,
              child: Icon(
                Icons.auto_awesome,
                color: Colors.white.withOpacity(0.7),
                size: 18,
              ),
            ),

            Positioned(
              right: 80,
              top: 40,
              child: Icon(
                Icons.auto_awesome,
                color: Colors.white.withOpacity(0.6),
                size: 14,
              ),
            ),

            Positioned(
              left: 60,
              top: 30,
              child: Icon(
                Icons.auto_awesome,
                color: Colors.white.withOpacity(0.5),
                size: 16,
              ),
            ),
          ],
        ),

        title: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "GlowUp 💄",
              style: TextStyle(
                fontFamily: "CloudLucent",
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Organize your beauty. Elevate your glow.",
              style: TextStyle(
                fontFamily: "CloudLucent",
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              icon: const Icon(
                Icons.logout,
                color: pinkDark,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Container(
                        width: 320,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28),
                          boxShadow: [
                            BoxShadow(
                              color: pinkDark.withOpacity(0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.favorite,
                              size: 50,
                              color: pinkDark,
                            ),

                            const SizedBox(height: 14),
                            const Text(
                              "Keluar dari GlowUp?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: "PlayfairDisplay",
                                fontWeight: FontWeight.bold,
                                color: pinkDark,
                              ),
                            ),

                            const SizedBox(height: 10),
                            const Text(
                              "Sampai Jumpa Lagi Girlss 𖹭 \nJangan Lupa Tetap Glow yaa!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "CloudLucent",
                              ),
                            ),

                            const SizedBox(height: 22),
                            Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(color: pinkDark),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    child: const Text(
                                      "Batal",
                                      style: TextStyle(
                                        fontFamily: "CloudLucent",
                                        color: pinkDark,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 12),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      await supabase.auth.signOut();
                                      if (!mounted) return;
                                      Navigator.pushReplacementNamed(context, "/");
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: pinkDark,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    child: const Text(
                                      "Logout",
                                      style: TextStyle(
                                        fontFamily: "CloudLucent",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: openForm,
        child: const Icon(Icons.add),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFC1D6),
              Color(0xFFFFE4EE),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.withOpacity(0.15),
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(0, 6),
                  )
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "⋆˚꩜｡ Your Beauty Collection",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "PlayfairDisplay",
                    ),
                  ),
                  const SizedBox(height: 10),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: LinearProgressIndicator(
                      value: products.isEmpty
                          ? 0
                          : totalChecked / products.length,
                      minHeight: 12,
                      color: pinkDark,
                      backgroundColor: Colors.pink.shade100,
                    ),
                  ),

                  const SizedBox(height: 8),
                  Text(
                    "$totalChecked dari ${products.length} produk dipilih (˶˃ ᵕ ˂˶)",
                    style: const TextStyle(fontSize: 14),
                  ),

                  const SizedBox(height: 16),
                  TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Cari produk...",
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 247, 240, 243),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchText = value;
                      });
                    },
                  ),

                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categories.map((cat) {
                        final selected = selectedCategory == cat;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ChoiceChip(
                            label: Text(cat),
                            selected: selected,
                            selectedColor: pinkDark,
                            labelStyle: TextStyle(
                              color: selected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            onSelected: (_) {
                              setState(() {
                                selectedCategory = cat;
                              });
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
            child: filteredProducts.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 70,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Produk tidak ditemukan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),
                        const Text(
                          "Coba cari dengan kata lain 𝜗ৎ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 139, 139, 139),
                          ),
                        ),

                        const SizedBox(height: 20),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.refresh),
                          label: const Text("Reset Pencarian"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: pinkDark,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              searchText = "";
                              selectedCategory = "All";
                              searchController.clear();
                            });
                          },
                        ),
                      ],
                    ),
                  )
                  : ListView.builder(
                      padding: const EdgeInsets.all(12),
                      itemCount: filteredProducts.length,
                      itemBuilder: (context, index) {
                        final p = filteredProducts[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 20,
                                spreadRadius: 1,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          ),

                          child: Card(
                            color: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ListTile(
                              leading: Checkbox(
                                value: p.checked,
                                activeColor: pinkDark,
                                onChanged: (val) async {
                                  await supabase
                                      .from('products')
                                      .update({'dipilih': val})
                                      .eq('id', p.id);
                                  await fetchProducts();
                                },
                              ),

                              title: Text(
                                p.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: p.checked
                                      ? pinkDark
                                      : Colors.black,
                                ),
                              ),

                              subtitle: Text(
                                "Kategori: ${p.category}\nHarga: ${formatRupiah.format(p.price)}",
                              ),

                              isThreeLine: true,
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    color: pinkDark,
                                    onPressed: () =>
                                        openForm(product: p),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    color: pinkDark,
                                    onPressed: () =>
                                        showDeleteDialog(p),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
            const SizedBox(height: 10),
            Text(
              "GlowUp is self-care ♡",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 133, 132, 132),
                fontFamily: "PlayfairDisplay",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}