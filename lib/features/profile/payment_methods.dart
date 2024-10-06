import 'package:firebase_ecommerce/data/data.dart';
import 'package:flutter/material.dart';

import '../widgets/payment_card.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Payment Method",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: ListView.builder(
            itemCount: userCards.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                PaymentCard(mycard: userCards[index]),
          )),
        ),
      ),
    );
  }
}
