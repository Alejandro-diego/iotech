import 'package:flutter/material.dart';
import 'package:iotechweb/responsive.dart';
import 'package:iotechweb/screen/home.dart';
import 'package:iotechweb/screen/home_movil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: HomeMovil(),
        desktop: Home(),
      ),
    );
  }
}
