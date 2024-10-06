import 'package:flutter/material.dart';

import '../../constants/color.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
                  height: 15,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Old Password"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "New Password"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Confirm Password"),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor),
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
