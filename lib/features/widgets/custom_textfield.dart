// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_ecommerce/constants/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatelessWidget {
  String label;
  TextEditingController controller;
  IconData icon;
  bool? isPass;

  CustomTextfield({
    super.key,
    required this.label,
    required this.controller,
    required this.icon,
     this.isPass = false
  });

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller,
      decoration:  InputDecoration(
        hintText: label,
        prefixIcon: Icon(icon, color: Colors.black45,),
        filled: true,
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:  BorderSide(
            width: 2,
            color: AppColor.primaryColor
          ),
        ),

      ),
    );
  }
}
