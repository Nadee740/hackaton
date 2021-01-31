import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.4,
        backgroundColor: Colors.white,
        title: Text('HOME',style: TextStyle(color: Colors.black,fontSize: 30),),
      ),
      body: Container(
        child: ListView(

          children: [],
        ),
      ),

    );
  }
}
