import 'package:firebase_ecommerce/features/auth/signup_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_btn.dart';
import '../widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

    final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                 
                   CustomTextfield(
                      label: 'Email', controller: emailController, icon: Icons.email),
                  const SizedBox(height: 15,),
                   CustomTextfield(
                      label: 'Password', controller: passwordController, icon: Icons.lock),
                  const SizedBox(height: 15,),
                 GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                    },
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text("Don't have Account", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                   const SizedBox(height: 18,),
              
                   CustomBtn(function: (){}, label: "Login")
                ],
              ),
            ),
          ),
        ),
    );
  }
}