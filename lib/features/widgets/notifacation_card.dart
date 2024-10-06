import 'package:flutter/material.dart';

class NotifacationCard extends StatelessWidget {
  const NotifacationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6)
      ),
      child: const ListTile(
        title: Text("Message title", style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text('Message description'),
        trailing: Text('more >', style: TextStyle(color: Colors.blue),),
      )
    );
  }
}