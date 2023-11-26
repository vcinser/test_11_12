import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(

    appBar: AppBar(
      centerTitle: true,
        title:
         const Text('Create profile',
            style: TextStyle(fontSize: 23,color: Colors.black),
          ),
          backgroundColor: Colors.white,
          actions: [
            Icon(Icons.add,color: Colors.black,),
            Icon(Icons.add,color: Colors.black,),
          ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 300,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}