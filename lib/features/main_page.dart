import 'package:firebase_ecommerce/constants/color.dart';
import 'package:firebase_ecommerce/features/cart/cart_page.dart';
import 'package:firebase_ecommerce/features/favourite/favourite_page.dart';
import 'package:firebase_ecommerce/features/home/home_page.dart';
import 'package:firebase_ecommerce/features/profile/profile_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int itemSelectedIndex = 0;

  final List<Widget> _pages = [
   HomePage(),
   const FavouritePage(),
   CartPage(),
    const ProfilePage()
  ];

  void onItemSelected(int index){
    setState(() {
      itemSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[itemSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: itemSelectedIndex,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: onItemSelected,
        items: [
          BottomNavItem("Home", Icons.home),
          BottomNavItem("favourite", Icons.favorite_outline),
          BottomNavItem("Cart", Icons.shopping_cart_checkout),
          BottomNavItem("Profile", Icons.person),
        ]
        
        )
    );
  }

  // ignore: non_constant_identifier_names
  BottomNavigationBarItem BottomNavItem(String label, IconData icon) {
    return BottomNavigationBarItem(
      label: label,
      icon: Icon(icon));
  }
}
