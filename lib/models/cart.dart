// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_ecommerce/models/product.dart';

class Cart {
  Product product;
  int? quantity;
  double? subTotal;
  Cart({
    required this.product,
     this.quantity = 1,
    this.subTotal = 0,
  });
  
}
