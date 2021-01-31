import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mixer/screens/slectpage.dart';
import 'package:mixer/services/getitems.dart';
import 'package:mixer/utils/ProductCard.dart';


class ItemsPage extends StatefulWidget {
  List items;
  ItemsPage({this.items});
  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  List<DocumentSnapshot> wholeitems=<DocumentSnapshot>[];
  bool isloading=false;

  @override
  void initState(){
    super.initState();
     getItems();
  }

  var selectedlist=[];
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
    onWillPop: (){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (BuildContext context) {
        return CheckPage();
      }));
    },
      child: Scaffold(
        body:isloading?Container(height: MediaQuery.of(context).size.height,child: Center(child: CircularProgressIndicator(backgroundColor: Colors.cyan,),),):selectedlist.length==0? Container(
          height: MediaQuery.of(context).size.height/2+150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/noproducts.jpg'),
              SizedBox(height: 20,),
              Text('Nothing found !',style: TextStyle(fontSize: 20,fontFamily: 'a'),)
            ],
          ),
        ):Container(

            child:GridView.count(
              crossAxisCount: 2,

              children: [
                for(int i=0;i<selectedlist.length;i++)
                  ProductCard(name: wholeitems[selectedlist[i]].data()['name'],products:wholeitems[selectedlist[i]],img:wholeitems[selectedlist[i]].data()['image'],category:wholeitems[selectedlist[i]].data()['recipe'] ,),


              ],
            )








        ),

      ),
    );
  }


  getItems() async{
    setState(() {
      isloading=true;
    });

    List<DocumentSnapshot> data= await ItemService().getadress();
    setState(() {

      wholeitems=data;
      print(wholeitems.length);
      for(int i=0;i<wholeitems.length;i++)
    {
      int count=0;
      for(int j=0;j<widget.items.length;j++) {

        for (int z = 0; z < wholeitems[i].data()['ingredients'].length; z++)
          if (widget.items[j].toLowerCase() == wholeitems[i].data()['ingredients'][z].toLowerCase())
            setState(() {
              count++;
            });


      }

      if(count>=2)

          selectedlist.insert(0, i);


        }

    });

    isloading=false;
print(selectedlist);
  }


}
