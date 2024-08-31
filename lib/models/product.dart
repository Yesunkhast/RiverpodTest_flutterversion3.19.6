class Product {
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.count,
  });

  final String id;
  final String title;
  final int price;
  final String image;
  int count;

  void addCount(int count) {
    this.count = count;
  }

  void lessCount(int count) {
    this.count = count;
  }
}
