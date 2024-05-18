import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          //toolbarHeight: 60,
          actions: <Widget>[
            PopupMenuButton<int>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 0,
                  child: Text("Sobre Nós"),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text("Nossas soluções"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Contate-nos"),
                ),
              ],
            )
          ],
          title: const SizedBox(
            height: 50,
            child: Image(
              image: AssetImage('assets/logo.png'),
            ),
          ),
        ),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/fondomovil.jpg'),
            ),
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/background.png'),
                ),
                Container(decoration: BoxDecoration(color: Colors.amber),),
                Text('hola')
              ],
            ),
            Text(
              "Este site está em construção",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
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

onSelected(BuildContext context, int item) {
  if (kDebugMode) {
    print(item.toString());
  }
}
