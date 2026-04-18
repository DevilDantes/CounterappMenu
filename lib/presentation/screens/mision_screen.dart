import 'package:flutter/material.dart';

class MisionScreen extends StatelessWidget {
  const MisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mision')),
      body: Center(
        child: Column(
          children: [Text('Bienvenido a nuestra pagina de mision')],
        ),
      ),
    );
  }
}
