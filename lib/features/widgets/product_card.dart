// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_ecommerce/features/home/product_details_page.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';

// ignore: must_be_immutable
class ProductCard extends StatefulWidget {
  Product product;

  ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsPage(product: widget.product)));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              margin: const EdgeInsets.only(bottom: 3),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.product.imgUrl), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Text(widget.product.name),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text("Price: ${widget.product.price} "),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          widget.product.isFavourite = !widget.product.isFavourite!;
                        });
                      },
                      child: widget.product.isFavourite == true
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(Icons.favorite_border)),
                )
              ],
            ),
            //const SizedBox(height: 6,),
          ],
        ),
      ),
    );
  }
}
