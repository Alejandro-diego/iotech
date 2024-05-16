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
          //toolbarHeight: 60,
          actions: <Widget>[
            PopupMenuButton<int>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context)=>[
               const PopupMenuItem(
                  value: 0,
                  child: Text("Sobre Nós"),),
                   const PopupMenuItem(
                  value: 1,
                  child: Text("Nossas soluções"),),
                    const PopupMenuItem(
                  value: 2,
                  child: Text("Contate-nos"),),
                  
                  


              ] ,
            )
          ],
          title: const SizedBox(
            height: 50,
            child: Image(
              image: AssetImage('assets/logoiotech.png'),
            ),
          ),
        ),
      ),
      body:  const SingleChildScrollView(
        child:  Column(
          children: [
            Image(
              image: AssetImage('assets/fondomovil.jpg'),
            ),
          ],
        ),
      ),
    );
  }
  
}

onSelected(BuildContext context, int item) {
}
