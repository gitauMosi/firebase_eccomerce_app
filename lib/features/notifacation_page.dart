import 'package:flutter/material.dart';

import 'widgets/notifacation_card.dart';

class NotifacationPage extends StatelessWidget {
  const NotifacationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifacation', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:  SafeArea(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index)=>const NotifacationCard(),
          ),
        ),
      ),
    );
  }
}