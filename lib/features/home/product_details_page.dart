// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_ecommerce/constants/color.dart';
import 'package:flutter/material.dart';

import 'package:firebase_ecommerce/models/product.dart';

// ignore: must_be_immutable
class ProductDetailsPage extends StatefulWidget {
  Product product;
  ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  String? colorvalue;
  String? sizeValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.product.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.product.imgUrl),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  'Price:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Spacer(),
                Text(
                  "Ksh ${widget.product.price}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [

                DropdownButton<String>(
                    value: colorvalue,
                    hint: const Text('Choose Color'),
                    icon: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Icon(Icons.arrow_drop_down),
                    ),
                    onChanged: (String? newvalue) {
                      setState(() {
                        colorvalue = newvalue;
                      });
                    },
                    items: <String>["Blue", "Green", "Yellow", "Black"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Tooltip(
                            message: value,
                            child: Text(value),
                          ));
                    }).toList()),

                    const  Spacer(),
                    DropdownButton<String>(
                    value: sizeValue,
                    hint: const Text('Choose Size'),
                    icon: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Icon(Icons.arrow_drop_down),
                    ),
                    onChanged: (String? newvalue) {
                      setState(() {
                        sizeValue = newvalue;
                      });
                    },
                    items: <String>["S", "M", "XL", "XXL"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Tooltip(
                            message: value,
                            child: Text(value),
                          ));
                    }).toList()),




              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(widget.product.description ?? "")
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.primaryColor.withOpacity(0.7),
          ),
          child: const Center(
            child: Text(
              "Add to cart",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
