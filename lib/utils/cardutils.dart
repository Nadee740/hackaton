import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cardutilss extends StatelessWidget {
  Color color;
  String title;
  String content;
  String image;
  Cardutilss({this.color,this.content,this.title,this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: color,
      child: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Align(
                  alignment: Alignment(0,0),
                  child: Container(
                      height: MediaQuery.of(context).size.height/6,
                      child: Image.asset(image,fit: BoxFit.fill,))

              )),
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Align(
                  alignment: Alignment(-0.90,-0.90),
                  child:Text(title,style: TextStyle(fontFamily: 'c',fontSize: 15),)

              )),
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Align(
                  alignment: Alignment(0.80,-0.95),
                  child:Icon(Icons.favorite_outline,size: 20,color: Colors.red,)
              )),
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Align(
                  alignment: Alignment(-0.88,0.99),
                  child:SingleChildScrollView(

                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(content,style: TextStyle(fontSize: 18,fontFamily: 'c'),),

                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),






                      ],
                    ),
                  )
              )),
        ],
      )
    );
  }
}