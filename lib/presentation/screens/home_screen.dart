import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/menu/app_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        actions: [
          IconButton(
            onPressed: () {
              exit(0);
            },
            icon: Icon(Icons.logout_rounded),
          ),
        ],
      ),
      drawer: buildMenu(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              'Click${(counter == 1) ? ' ' : 's'}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
          SizedBox(height: 10),
          _CustomButton(
            icon: Icons.plus_one_rounded,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          SizedBox(height: 10),
          _CustomButton(
            icon: Icons.exposure_minus_1_rounded,
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CustomButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
