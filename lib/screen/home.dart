import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          toolbarHeight: 90,
          // elevation: 3,
          //backgroundColor:const Color.fromARGB(255, 185, 183, 175),
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 80,
                  child: Image(
                    image: AssetImage('assets/logoiotech.png'),
                  ),
                ),
              ),
            ],
          ),
          // title: const Text('Iotech'),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 206, 206, 206),
      body: const Center(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/fondo.jpg"),
            ),
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
