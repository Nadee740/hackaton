import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mixer/utils/mainscreen.dart';
import 'package:string_validator/string_validator.dart';

class ProductFullDisplay extends StatefulWidget {
  String name;

  String image;
  String category;     // original category like rice...
           //defines whether loose or mattedh
  DocumentSnapshot products;
  ProductFullDisplay({this.products,this.category,this.name,this.image});
  @override
  _ProductFullDisplayState createState() => _ProductFullDisplayState();
}

class _ProductFullDisplayState extends State<ProductFullDisplay> {
  GlobalKey<FormState>formkey = GlobalKey();
 TextEditingController quantity=TextEditingController();
  final _scafoldkey =GlobalKey<ScaffoldState>();
  VoidCallback _showpersbottomsheetcallback;
int count=0;
 List<Map<String,dynamic>> cart;
 List<DropdownMenuItem<String>> typevaraition=<DropdownMenuItem<String>>[];
 String currentvariation;
  double price;
  double offerprice;



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (BuildContext context) {
          return MainScreen();
        }));
      },
      child: Scaffold(

        key: _scafoldkey,


        body: Container(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(14.0,8,14,0),
                child: Container(
                  // height: 300,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height:200,
                        child: ClipRRect(
                          child: Hero(
                              tag:widget.image,
                              child: CachedNetworkImage(fit: BoxFit.fill,imageUrl: widget.image,placeholder: (context,url){
                                return Image.asset('images/imageicon.png',);
                              })),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0,14,120,0),
                      child: Container(
                        child: Align(
                            alignment: Alignment(-0.75,0),
                            child: Text(widget.name.toUpperCase(),style: TextStyle(fontFamily: 'a',fontSize: 24),)),
                      ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0,14,120,0),
                        child: Container(
                          child: Align(
                              alignment: Alignment(-0.75,0),
                              child: Container(
                                  height: 40,

                                  child: Text('RECIPE',style: TextStyle(fontFamily: 'a',fontSize: 24),))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0,14,120,0),
                        child: Container(
                          child: Align(
                              alignment: Alignment(-0.65,0),
                              child: Text(widget.category,style: TextStyle(fontFamily: 'a',fontSize: 24),)),
                        ),
                      ),




                      SizedBox(height: 10,),
                      // Container(
                      //   child: ListView(
                      //     scrollDirection: Axis.horizontal,
                      //   ),
                      // )

                    ],
                  ),
                  // child:
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }









}
