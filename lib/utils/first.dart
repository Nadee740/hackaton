import 'package:flutter/material.dart';
import 'package:mixer/utils/cardutils.dart';

class AllNotes extends StatefulWidget {
  @override
  _AllNotesState createState() => _AllNotesState();
}

class _AllNotesState extends State<AllNotes> {




  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [

        Cardutilss(color: Colors.lime,title: 'HEALTHY',content: 'APPLE',image:'images/apple.jpg' ,),
        Cardutilss(color: Colors.lime,title: 'SUGARY',content: 'AVOGARDO',image:'images/avogardo.jpg' ),
        Cardutilss(color: Colors.lime,title: 'CHOCOLOTE',content: 'HEARTBEAT',image:'images/apple.jpg' ),
        Cardutilss(color: Colors.lime,title: 'HEALTHY',content: 'SHARJAH',image:'images/lichy.jpg' ),
        Cardutilss(color: Colors.lime,title: 'HEALTHY',content: 'APPLE',image:'images/apple.jpg' ,),
        Cardutilss(color: Colors.lime,title: 'SUGARY',content: 'AVOGARDO',image:'images/avogardo.jpg' ),
        Cardutilss(color: Colors.lime,title: 'CHOCOLOTE',content: 'HEARTBEAT',image:'images/apple.jpg' ),
        Cardutilss(color: Colors.lime,title: 'HEALTHY',content: 'SHARJAH',image:'images/lichy.jpg' ),



      ],
    );
  }



}