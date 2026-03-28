import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.purple),
      title: 'CounterApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CounterApp'),
          actions: [
            IconButton(onPressed: () {
              exit(0);
            }, icon: Icon(Icons.logout_rounded)),
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
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: Icon(Icons.refresh_rounded),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Icon(Icons.plus_one_rounded),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (counter > 0) {
                    counter--;
                  }
                });
              },
              child: Icon(Icons.exposure_minus_1_rounded),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
