import 'package:flutter/material.dart';
import 'package:mixer/screens/slectpage.dart';
import 'package:mixer/utils/first.dart';
import 'package:mixer/utils/scnd.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

    print(MediaQuery.of(context).size.height);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
            children: [  Expanded(
              child: Align(
                  alignment: Alignment(-0.75,0),
                  child: Text('MIXER ',style: TextStyle(color: Colors.lime,fontSize: 35,fontFamily: 'c'),)),
            ),
              Expanded(child: Align(
                alignment: Alignment(.80,0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('images/kunji.jpeg'),),
                    ),
                    // Text(authentication.auth.currentUser.displayName)
                  ],
                ),
              ))
            ]
        ),
        bottom:TabBar(
          // isScrollable: true,
         indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(fontSize: 18,fontFamily: 'c'),
            indicatorColor: Colors.black,
            labelColor: Colors.amber,
            tabs: [ Tab (text: 'FIND FOOD',),Tab(text: 'FAVOURITES',)]),
      ),
      body: TabBarView(
          children:[ AllNotes(),Importants()]
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
          child: Icon(Icons.search,color: Colors.black,),
          onPressed: () {

            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
                  return CheckPage();
                }));
          }

      ),
    );
  }
}