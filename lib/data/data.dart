import '../models/card.dart';
import '../models/cart.dart';
import '../models/product.dart';

final List<Product> products = [
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s1.png",
      isFavourite: false,
      price: 233.00),
  Product(
      name: "Airforce",
      description: "product description",
      imgUrl: "assets/images/s2.png",
      isFavourite: false,
      price: 123.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s3.png",
      isFavourite: false,
      price: 123.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s4.png",
      isFavourite: false,
      price: 333.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s5.png",
      isFavourite: false,
      price: 443.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s6.png",
      isFavourite: false,
      price: 233.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s7.png",
      isFavourite: false,
      price: 73.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s8.png",
      isFavourite: false,
      price: 43.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s9.png",
      isFavourite: false,
      price: 333.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s10.png",
      isFavourite: false,
      price: 230.00),
];

final List<Cart> cartProducts = [
  Cart(product: products[0], quantity: 1, subTotal: 0),
  Cart(product: products[1], quantity: 1, subTotal: 0),
  Cart(product: products[3], quantity: 1, subTotal: 0),
];


final List<Product> favoriteProducts = [
  
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s6.png",
      isFavourite: false,
      price: 233.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s7.png",
      isFavourite: false,
      price: 73.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s8.png",
      isFavourite: false,
      price: 43.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s9.png",
      isFavourite: false,
      price: 333.00),
  Product(
      name: "Nike",
      description: "product description",
      imgUrl: "assets/images/s10.png",
      isFavourite: false,
      price: 230.00),
];

final List<PayCard> userCards  = [
  PayCard(name: "Amos Gitau", cardNumber: "1234 5678 9012 3456", date: "12/25", cvv: "123", bankName: "Commercial Bank"),
  PayCard(name: "Amos Gitau", cardNumber: "6789 0123 4567 8901", date: "01/25", cvv: "321", bankName: "EQuity Bank"),
   
];