import 'package:firebase_ecommerce/data/data.dart';
import 'package:firebase_ecommerce/features/widgets/favourite_card.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Favourites',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              ListView.builder(
                itemCount: favoriteProducts.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => FavouriteCard(
                  product: favoriteProducts[index],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
