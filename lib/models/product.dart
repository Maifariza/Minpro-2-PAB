class Product {
  String id;
  String name;
  String category;
  int price;
  bool checked;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    this.checked = false,
  });
}