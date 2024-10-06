// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  String name;
  String? description;
  String imgUrl;
  double price;
  bool? isFavourite;
  
  Product({
    required this.name,
    this.description,
    required this.imgUrl,
    required this.price,
    this.isFavourite = false
  });
}
