import 'package:flutter/material.dart';

class HomeMovil extends StatefulWidget {
  const HomeMovil({super.key});

  @override
  State<HomeMovil> createState() => _HomeMovilState();
}

class _HomeMovilState extends State<HomeMovil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          toolbarHeight: 60,
          title: const SizedBox(
            height: 50,
            child: Image(
              image: AssetImage('assets/logoiotech.png'),
            ),
          ),
        ),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/fondomovil.jpg'),
        ),
      ),
    );
  }
}
