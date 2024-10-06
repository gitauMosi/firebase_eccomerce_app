import 'package:firebase_ecommerce/features/auth/login_page.dart';
import 'package:firebase_ecommerce/features/profile/change_password.dart';
import 'package:firebase_ecommerce/features/profile/delivery_address.dart';
import 'package:firebase_ecommerce/features/profile/payment_methods.dart';
import 'package:firebase_ecommerce/features/profile/recipient_details.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person),
                  ),
                  title: Text(
                    "mosi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('mosi@gmail.com'),
                      Text('077773773'),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.person_pin),
                  title: const Text("Recipient Details"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecipientDetails()));
                  },
                ),
                const Divider(),
                 ListTile(
                  leading: const Icon(Icons.delivery_dining_outlined),
                  title: const Text("Delivery Address"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DeliveryAddress()));
                  },
                ),
                const Divider(),
                 ListTile(
                  leading: const Icon(Icons.monetization_on_outlined),
                  title: const Text("Payment Methods"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentMethods()));
                  },
                ),
                const Divider(),
                 ListTile(
                  leading: const Icon(Icons.lock),
                  title: const Text("Change Password"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangePassword()));
                  },
                ),
                const Divider(),
               ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("logout"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  LoginPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
