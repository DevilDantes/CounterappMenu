import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      title: 'CounterApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CounterApp'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout_rounded)),
          ],
          leading: Icon(Icons.menu_book_rounded),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                counter == 0
                    ? 'Cero clicks'
                    : counter == 1
                    ? 'Click'
                    : 'Clicks',
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
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CustomButton({Key? key, required this.icon, required this.onPressed})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 8.0,
      backgroundColor: Colors.purple, // Color púrpura fuerte
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Bordes menos redondos
      ),
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white, // Ícono en blanco
      ),
    );
  }
}
