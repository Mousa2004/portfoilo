import 'package:flutter/material.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Projects Tab',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
