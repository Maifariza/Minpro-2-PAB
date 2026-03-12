import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:minpro2_mobile/main.dart';
import 'package:minpro2_mobile/models/product.dart';

final supabase = Supabase.instance.client;

class FormPage extends StatefulWidget {
  final bool isEdit;
  final Product? product;

  const FormPage({super.key, required this.isEdit, this.product});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final nameC = TextEditingController();
  final catC = TextEditingController();
  final priceC = TextEditingController();

  String? formError;
  String? nameError;
  String? categoryError;
  String? priceError;

  @override
  void initState() {
    super.initState();
    if (widget.product != null) {
      nameC.text = widget.product!.name;
      catC.text = widget.product!.category;
      priceC.text = widget.product!.price.toString();
    }
  }

  void save() async {
    setState(() {
      formError = null;
      nameError = null;
      categoryError = null;
      priceError = null;
    });

    bool valid = true;

    final nameRegex = RegExp(r'^[a-zA-Z\s]+$');
    final categoryRegex = RegExp(r'^[a-zA-Z\s]+$');

    if (nameC.text.trim().isEmpty ||
        catC.text.trim().isEmpty ||
        priceC.text.trim().isEmpty) {
      setState(() {
        formError = "Oops.. Kolom tidak boleh kosong.";
      });

      valid = false;
    }

    if (nameC.text.isNotEmpty && !nameRegex.hasMatch(nameC.text)) {
      setState(() {
        nameError = "Nama produk harus berupa huruf.";
      });
      valid = false;
    }

    if (catC.text.isNotEmpty && !categoryRegex.hasMatch(catC.text)) {
      setState(() {
        categoryError = "Kategori harus berupa huruf.";
      });
      valid = false;
    }

    int? price;
    if (priceC.text.isNotEmpty) {
      price = int.tryParse(priceC.text.replaceAll(RegExp(r'[^0-9]'), ''));
      if (price == null) {
        setState(() {
          priceError = "Harga harus berupa angka.";
        });
        valid = false;
      }
    }

    if (!valid) return;
    try {
    if (widget.isEdit) {
      if (nameC.text == widget.product!.name &&
          catC.text == widget.product!.category &&
          price == widget.product!.price) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("GlowUp kamu masih sama. Belum ada perubahan produk (๑>◡<๑)."),
          ),
        );
        return;
      }
      await supabase
          .from('products')
          .update({
            'nama': nameC.text,
            'kategori': catC.text,
            'harga': price,
          })
          .eq('id', widget.product!.id);
    } else {
      await supabase
          .from('products')
          .insert({
            'nama': nameC.text,
            'kategori': catC.text,
            'harga': price,
            'dipilih': false,
          });
    }
      if (!mounted) return;
      Navigator.pop(context, true);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  InputDecoration inputStyle(String label) {
    return const InputDecoration(
      labelStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
        color: pinkDark,
        fontFamily: "CloudLucent",
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFBFA5AE),
          width: 1.5,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: pinkDark,
          width: 2.5,
        ),
      ),
    ).copyWith(labelText: label);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      toolbarHeight: 60,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: pinkDark),
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
                      Icons.arrow_back,
                      size: 50,
                      color: pinkDark,
                    ),

                    const SizedBox(height: 14),
                    const Text(
                      "Kembali ke Home?",
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
                      "Perubahan yang belum disimpan akan hilang.",
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
                                color: pinkDark,
                                fontFamily: "CloudLucent",
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
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

      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [pinkSoft, Color(0xFFFFE3EC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    ),

      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/GlowUp.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          IgnorePointer(
            child: Container(
              color: Colors.white.withOpacity(0.45),
            ),
          ),

          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.95),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.pink.shade100,
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.withOpacity(0.18),
                    blurRadius: 35,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.isEdit ? "Edit Produk" : "Tambah Produk",
                    style: const TextStyle(
                      fontFamily: "PlayfairDisplay",
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: pinkDark,
                    ),
                  ),

                  const SizedBox(height: 25),
                  TextFormField(
                    controller: nameC,
                    style: const TextStyle(
                      fontFamily: "CloudLucent",
                      fontSize: 20,
                    ),
                    decoration: inputStyle("Nama Produk")
                        .copyWith(errorText: nameError),
                  ),

                  const SizedBox(height: 20),
                  TextFormField(
                    controller: catC,
                    style: const TextStyle(
                      fontFamily: "CloudLucent",
                      fontSize: 20,
                    ),
                    decoration: inputStyle("Kategori")
                        .copyWith(errorText: categoryError),
                  ),

                  const SizedBox(height: 20),
                  TextFormField(
                    controller: priceC,
                    keyboardType: const TextInputType.numberWithOptions(decimal: false),
                    style: const TextStyle(
                      fontFamily: "CloudLucent",
                      fontSize: 20,
                    ),
                    decoration: inputStyle("Harga").copyWith(
                      prefixText: "Rp ",
                      errorText: priceError,
                    ),
                  ),

                  const SizedBox(height: 24),
                  if (formError != null)
                    Text(
                      formError!,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: save,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 241, 207, 223),
                        elevation: 12,
                        shadowColor: pinkDark.withOpacity(0.4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),

                      child: Text(
                        widget.isEdit ? "Simpan" : "Tambah",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: pinkDark,
                          fontFamily: "CloudLucent",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}