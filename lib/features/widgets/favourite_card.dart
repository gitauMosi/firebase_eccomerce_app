// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:firebase_ecommerce/models/product.dart';

import '../../constants/color.dart';

// ignore: must_be_immutable
class FavouriteCard extends StatelessWidget {
  Product product;
  FavouriteCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: AppColor.primaryColor.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 1)
          ]),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(product.imgUrl), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(product.price.toString()),
                const Spacer(),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.shopping_cart_checkout, color: Colors.black54,),
                    Text('Move to Cart'),
                    //Spacer(),
                    SizedBox(width: 10,),
                    Icon(Icons.delete, color: Colors.black54,),
                    Text('Remove'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
