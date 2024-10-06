// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../models/card.dart';

// ignore: must_be_immutable
class PaymentCard extends StatelessWidget {
  PayCard mycard;
  PaymentCard({
    super.key,
    required this.mycard,
  });

  String encryptedSecretCode() {
    int cardId = int.parse(mycard.cardNumber.replaceAll(' ', ''));
    List<int> digits = cardId.toString().split('').map(int.parse).toList();

    List<int> lastFourDigits = digits.sublist(digits.length - 4);

    return lastFourDigits.join('');
  }

  void deleteCard() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey[200]),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                mycard.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(".... .... .... ${encryptedSecretCode()}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black45)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Month/ Year",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                mycard.date,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(mycard.bankName)
            ],
          ),
          const Spacer(),

          ///
          Column(
            children: [
              GestureDetector(
                onTap: deleteCard,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.delete_outline_outlined,
                    color: Colors.black45,
                  ),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage("assets/icons/visa.png"),
                  height: 50,
                  width: 50,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
