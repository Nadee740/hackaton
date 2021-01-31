import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mixer/screens/ProductFullDisplay.dart';
class ProductCard extends StatefulWidget {
  String img;
  String name;
  String category;


  DocumentSnapshot products;
  ProductCard({this.name,this.img,this.category,this.products});
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext){
            return ProductFullDisplay(products: widget.products,name: widget.name,image: widget.img,category: widget.category,);

          }));
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 1,
          child: Container(
            decoration: BoxDecoration(color: Colors.white38,borderRadius: BorderRadius.circular(10),gradient: LinearGradient(colors: [Colors.grey,Colors.white70])),

            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 2),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                 child: ClipRRect(
                   child: Hero(
                       tag: widget.img,
                       // FadeInImage.assetNetwork(placeholder: 'images/imageicon.png', image: widget.img,fit: BoxFit.fill,)
                       child:CachedNetworkImage(fit: BoxFit.fill,imageUrl: widget.img,placeholder: (context,url){
                        return Image.asset('images/imageicon.png',);
                       })),
                     // Image.network(widget.img,fit: BoxFit.fill,)
                 ),
                ),
                SizedBox(height: 2,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5.0,0,5,0),
                  child: Container(

                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(widget.name.toUpperCase(),style: TextStyle(fontSize: 18,fontFamily: 'a',fontWeight: FontWeight.bold),)),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
