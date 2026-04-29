import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/mision_screen.dart';
import 'package:flutter_application_1/presentation/screens/vision_screen.dart';
import 'package:flutter_application_1/presentation/screens/contacto_screen.dart';
import 'package:flutter_application_1/presentation/screens/login_screen.dart';
import 'package:flutter_application_1/presentation/screens/perfil_screen.dart';
import 'package:flutter_application_1/presentation/screens/configuracion_screen.dart';
import 'package:flutter_application_1/presentation/screens/acerca_de_screen.dart';

// Menú recursivo usando un Mapa
final Map<String, dynamic> menuMap = {
  'title': 'Menú',
  'icon': Icons.menu,
  'children': [
    {'title': 'Inicio', 'icon': Icons.home, 'screen': null},
    {
      'title': 'Misión',
      'icon': Icons.military_tech,
      'screen': const MisionScreen(),
    },
    {
      'title': 'Visión',
      'icon': Icons.visibility,
      'screen': const VisionScreen(),
    },
    {
      'title': 'Contacto',
      'icon': Icons.contact_mail,
      'screen': const ContactoScreen(),
    },
    {'title': 'Login', 'icon': Icons.login, 'screen': const LoginScreen()},
    {'title': 'Perfil', 'icon': Icons.person, 'screen': const PerfilScreen()},
    {
      'title': 'Configuración',
      'icon': Icons.settings,
      'screen': const ConfiguracionScreen(),
    },
    {
      'title': 'Acerca de',
      'icon': Icons.info,
      'screen': const AcercaDeScreen(),
    },
  ],
};

// Función recursiva para construir el menú
List<Widget> buildMenuItems(
  BuildContext context,
  Map<String, dynamic> menu, {
  int depth = 0,
}) {
  List<Widget> items = [];

  if (menu.containsKey('children')) {
    // Es un grupo de menú (recursivo)
    List<dynamic> children = menu['children'];
    for (var child in children) {
      items.addAll(
        buildMenuItems(
          context,
          child as Map<String, dynamic>,
          depth: depth + 1,
        ),
      );
    }
  } else {
    // Es un item de menú
    String title = menu['title'] ?? '';
    IconData icon = menu['icon'] ?? Icons.arrow_right;
    dynamic screen = menu['screen'];

    items.add(
      ListTile(
        title: Text(title),
        leading: Icon(icon),
        onTap: () {
          if (screen != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
          } else {
            Navigator.pop(context);
          }
        },
      ),
    );
  }

  return items;
}

Widget buildMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(child: Image.asset('images/logo.png')),
        ...buildMenuItems(context, menuMap),
      ],
    ),
  );
}
