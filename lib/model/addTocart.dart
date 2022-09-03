class AddToCart {
  final String imageUrl;
  final double Price;
  final int numberOfpices;
  final String name;
  final String size;
  bool show = true;

  AddToCart({
    required this.imageUrl,
    required this.Price,
    required this.numberOfpices,
    required this.name,
    required this.size,
  });
}

List<AddToCart> myCart = [];
