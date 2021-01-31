import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mixer/screens/home.dart';
import 'package:mixer/screens/slectpage.dart';
import 'package:mixer/utils/mainscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 debugShowCheckedModeBanner: false,
      home:  DefaultTabController(
        initialIndex: 1,
        length: 2,
        child:MainScreen() ,
      ),



    );
  }
}
