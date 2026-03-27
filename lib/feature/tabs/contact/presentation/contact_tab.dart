import 'package:flutter/material.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Contact Tab',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
