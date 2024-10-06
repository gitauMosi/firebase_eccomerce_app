import 'package:flutter/material.dart';

import '../../constants/color.dart';

class RecipientDetails extends StatelessWidget {
  const RecipientDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipient Details"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Stack(children: [
                    const CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black45,
                        )),
                    Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: const Icon(
                              Icons.edit,
                              size: 18,
                            )))
                  ]),
                  title: const Text(
                    "Change Image",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: "mosi git"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: "mosi@gmail.com"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: "078883833"),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor
                    ),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                        
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
