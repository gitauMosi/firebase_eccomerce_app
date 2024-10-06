// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_ecommerce/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/cart.dart';

// ignore: must_be_immutable
class CartCard extends StatelessWidget {
  Cart cart;
  CartCard({
    super.key,
    required this.cart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(6),
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: AppColor.primaryColor.withOpacity(0.3),
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
                    image: AssetImage(cart.product.imgUrl), fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(cart.product.name),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.delete,
                          size: 18,
                          color: Colors.red,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),

                //price
                Text("Price: ${cart.product.price}"),
                const SizedBox(
                  height: 4,
                ),
                //sub price
                Text("Sub Total: ${cart.subTotal}"),
                const SizedBox(
                  height: 4,
                ),

                //footer
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Ships Free",
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(cart.quantity.toString()),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.add),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
