import 'package:flutter/material.dart';
import 'package:iotechweb/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IOTech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 184, 193, 224)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Este site está em construção",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
            ),
            Text(
              "Tel +55 54 9 96933976 - Alejandro",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    );
  }
}
