import 'package:flutter/material.dart';

class VisionScreen extends StatelessWidget {
  const VisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Visión')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Nuestra visión es ser líderes en innovación tecnológica.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
