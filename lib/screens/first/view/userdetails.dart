

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UsersDetails extends StatelessWidget {
   UsersDetails({Key? key}) : super(key: key);

   FirebaseAuth auth = FirebaseAuth.instance;
   late User? user = auth.currentUser;
 late final userid = user!.uid;

  CollectionReference userinfo = 
  FirebaseFirestore.instance.collection('userdetails');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text('Users'),
          centerTitle: true,
        ),
        body:StreamBuilder<DocumentSnapshot<Object?>>(
          stream: userinfo.doc(userid).snapshots(),
          builder: (context, snapshot) {
            if(!snapshot.hasData){
              return const CircularProgressIndicator();
            }
           else{
             var userDetails = snapshot.data!;
             return ListTile(
                    title: Text(userDetails['NAME'].toString()),
             );
           }
          },
        ),
      ),
    );
  }
}
