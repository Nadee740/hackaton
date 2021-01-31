import 'package:flutter/material.dart';
import 'package:mixer/screens/body.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:Body());
  }
}