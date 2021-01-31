import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:uuid/uuid.dart';
class ItemService{

      // .where('number',isEqualTo: AuthService().auth.currentUser.phoneNumber).

  Future <List<DocumentSnapshot>>getadress(){
    return Firestore.instance.collection('items').getDocuments().then((snaps){
      return snaps.documents;
    } );
  }


}