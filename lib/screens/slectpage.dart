import 'package:flutter/material.dart';
import 'package:mixer/screens/itemspage.dart';
import 'package:mixer/utils/first.dart';
import 'package:mixer/utils/mainscreen.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  bool kiwi=false;
  bool apple=false;
  bool orange=false;
  bool grape=false;
  bool pineapple=false;
  bool banana=false;
  bool carrot=false;
  bool beetroot=false;
  bool lemon=false;
  bool strawberry=false;
  bool ginger=false;
  bool pomegranate=false;
 var items=[];


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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('CHOOSE YOUR INGREDIENTS',style: TextStyle(fontFamily: 'a',fontSize: 18,color: Colors.black),),
        ),


        body: ListView(
          children: [
            SizedBox(height: 10,),
Container(
  decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(10)),

  height: 50,
  width:200,
  child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('FRUITS',style: TextStyle(fontSize: 20,fontFamily: 'a'),),
  ),
),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width:20 ),
                  Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: apple,
                    onChanged: (bool value){

                      setState(() {
                       apple=value;
                      });

                    },
                  ),
                  SizedBox(width:20 ),
                  Text('banana',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: banana,
                    onChanged: (bool value){

                      setState(() {
                        banana=value;
                      });

                    },
                  ),
                  SizedBox(width:20 ),
                  Text('pineapple',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: pineapple,
                    onChanged: (bool value){

                      setState(() {
                        pineapple=value;
                      });

                    },
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width:20 ),
                  Text('orange',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: orange,
                    onChanged: (bool value){

                      setState(() {
                        orange=value;
                      });

                    },
                  ),
                  SizedBox(width:20 ),
                  Text('kiwi',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: kiwi,
                    onChanged: (bool value){

                      setState(() {
                        kiwi=value;
                      });

                    },
                  ),
                  SizedBox(width:20 ),
                  Text('grape',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: grape,
                    onChanged: (bool value){

                      setState(() {
                        grape=value;
                      });

                    },
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width:20 ),
                  Text('Beetroot',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: beetroot,
                    onChanged: (bool value){

                      setState(() {
                        beetroot=value;
                      });

                    },
                  ),
                  SizedBox(width:20 ),
                  Text('LEMOn',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: lemon,
                    onChanged: (bool value){

                      setState(() {
                        lemon=value;
                      });

                    },
                  ),
                  SizedBox(width:20 ),
                  Text('Carrot',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: carrot,
                    onChanged: (bool value){

                      setState(() {
                        carrot=value;
                      });

                    },
                  ),
                ],
              ),
            ),
            SingleChildScrollView(

              scrollDirection:Axis.horizontal,
                child: Row(
                children: [
                  SizedBox(width:20 ),
                  Text('ginger',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: ginger,
                    onChanged: (bool value){

                      setState(() {
                        ginger=value;
                      });

                    },
                  ),
                  SizedBox(width:20 ),
                  Text('strawberry',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: strawberry,
                    onChanged: (bool value){

                      setState(() {
                        strawberry=value;
                      });

                    },
                  ),
                  SizedBox(width:20 ),
                  Text('pomergranate',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
                  Checkbox(
                    value: pomegranate,
                    onChanged: (bool value){

                      setState(() {
                        pomegranate=value;
                      });

                    },
                  ),
                ],
              ),
            ),

            Container(height: 40,width: MediaQuery.of(context).size.width,
            child: Center(
              child: InkWell(
                onTap: () async{
                makelist();
                print(items);

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext){
                    return ItemsPage(items: items,);

                  }));

                },
                child: Container(
                  decoration: BoxDecoration( color: Colors.orange,borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: 150,

                    child: Center(child: Text('SEARCH DRINKS',style: TextStyle(fontFamily: 'a',fontSize: 18)),)),
              ),
            ),

            )





            // SizedBox(height: 10,),
            // Container(
            //   color: Colors.yellow,
            //   height: 50,
            //   width: MediaQuery.of(context).size.width,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text('VEGETABLES',style: TextStyle(fontSize: 20,fontFamily: 'a'),),
            //   ),
            // ),
            //
            // Row(
            //   children: [
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //   ],
            // ),

            // Row(
            //   children: [
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //   ],
            // ),
            // SizedBox(height: 10,),
            // Container(
            //   color: Colors.yellow,
            //   height: 50,
            //   width: MediaQuery.of(context).size.width,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text('VEGETABLES',style: TextStyle(fontSize: 20,fontFamily: 'a'),),
            //   ),
            // ),
            // Row(
            //   children: [
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //   ],
            // ),
            // SizedBox(height: 10,),
            // Container(
            //   color: Colors.yellow,
            //   height: 50,
            //   width: MediaQuery.of(context).size.width,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text('VEGETABLES',style: TextStyle(fontSize: 20,fontFamily: 'a'),),
            //   ),
            // ),
            // Row(
            //   children: [
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //     SizedBox(width:20 ),
            //     Text('APPLE',style: TextStyle(fontSize: 18,fontFamily: 'a'),),
            //     Checkbox(
            //       value: checkboxvalue,
            //       onChanged: (bool value){
            //
            //         setState(() {
            //           checkboxvalue=value;
            //         });
            //
            //       },
            //     ),
            //   ],
            // ),




          ],
      ),

      ),
    );
  }
  makelist(){
    if(apple){
      setState(() {
        items.insert(0, 'apple');
      });


    }
    if(banana){
      setState(() {
        items.insert(0, 'banana');
      });


    }
    if(pineapple){
      setState(() {
        items.insert(0, 'pineapple');
      });


    }
    if(orange){
      setState(() {
        items.insert(0, 'orange');
      });


    }
    if(kiwi){
      setState(() {
        items.insert(0, 'kiwi');
      });


    }

    if(grape){
      setState(() {
        items.insert(0, 'grape');
      });


    }
    if(beetroot){
      setState(() {
        items.insert(0, 'beetroot');
      });


    }
    if(lemon){
      setState(() {
        items.insert(0, 'lemon');
      });


    }
    if(carrot){
      setState(() {
        items.insert(0, 'carrot');
      });


    }
    if(ginger){
      setState(() {
        items.insert(0, 'ginger');
      });


    }
    if(pomegranate){
      setState(() {
        items.insert(0, 'pomergranate');
      });


    }
    if(strawberry){
      setState(() {
        items.insert(0, 'strawberry');
      });


    }

  }

}
