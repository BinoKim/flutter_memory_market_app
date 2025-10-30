

class Product {
  final String name;
  final int price;
  final String description;
  final String? imagePath;
  
  Product ({
    required this.name,
    required this.price,
    required this.description,
    this.imagePath,
  });

}

