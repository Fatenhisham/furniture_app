class Product {
  final String imageLink;
  final String title;
  final String subtitle;
  final double price;
  bool isLoved; 

  Product({
    required this.imageLink,
    required this.title , 
    required this.subtitle,
    required this.price ,
    this.isLoved = false
  });
}
