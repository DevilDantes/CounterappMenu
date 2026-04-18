import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/mision_screen.dart';
import 'package:flutter_application_1/presentation/screens/vision_screen.dart';
import 'package:flutter_application_1/presentation/screens/contacto_screen.dart';
import 'package:flutter_application_1/presentation/screens/login_screen.dart';

final List<Map<String, dynamic>> menuItems = [
  {'title': 'Inicio', 'icon': Icons.home, 'screen': null},
  {'title': 'Misión', 'icon': Icons.military_tech, 'screen': MisionScreen()},
  {'title': 'Visión', 'icon': Icons.visibility, 'screen': VisionScreen()},
  {'title': 'Contacto', 'icon': Icons.contact_mail, 'screen': ContactoScreen()},
  {'title': 'Login', 'icon': Icons.login, 'screen': LoginScreen()},
];

Widget buildMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(child: Image.asset('images/logo.png')),
        for (var item in menuItems)
          ListTile(
            title: Text(item['title']),
            leading: Icon(item['icon']),
            onTap: () {
              if (item['screen'] != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item['screen']),
                );
              } else {
                Navigator.pop(context);
              }
            },
          ),
      ],
    ),
  );
}
