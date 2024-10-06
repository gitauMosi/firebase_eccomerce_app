import 'package:firebase_ecommerce/data/data.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: cartProducts.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => CartCard(
                      cart: cartProducts[index],
                    ),
                  ),
                ],
              ),
            )),
      ),

       bottomNavigationBar: SizedBox(
        height: 100,
        width: double.infinity,
        child: Column(
          children: [
            const Row(
              children: [
                Text("Checkout Price:", style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text('KSh 0.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.primaryColor.withOpacity(0.7),
              ),
              child: const Center(
                child: Text(
                  "Check Out",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
