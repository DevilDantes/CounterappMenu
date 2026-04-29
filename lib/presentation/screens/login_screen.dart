import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login')),
      body: Center(
        child: Column(children: [Text('Bienvenido a nuestra pagina de login')]),
      ),
    );
  }
}
