
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:train/screens/first/first.dart';

class FirstScreen extends StatelessWidget {
   FirstScreen({Key? key}) : super(key: key);

  FirebaseAuth auth = FirebaseAuth.instance;
   late User? user = auth.currentUser;
 late final userid = user!.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: StreamBuilder<DocumentSnapshot<Object?>>(
          stream: FirebaseFirestore.instance.collection('userdetails').doc(userid).snapshots(),
          builder: (context, snapshot) {
            if(!snapshot.hasData){
              return CircularProgressIndicator();
            }
            else {
              var userDetails = snapshot.data!;
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
               
                children: [
                
                  Text('Hello , '+userDetails['NAME'].toString().toUpperCase(),
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute<MaterialPageRoute>(builder: (context) {
                          return UsersDetails();
                        },),);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 25,
                        child:const Text('N'),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[300],
                ),
                child:const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child:  TextField(
                      decoration: InputDecoration(
                      hintText: '      search here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),),
               const  SizedBox(height: 20,),
               const  Divider(
                  thickness: 8,
                ),
                const SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(width: 10,),
        
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.purple[200],
                        ),
                        width: 80,
                        height: 80,
                        child: const Center(child: Text('shirts'),),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                          color: Colors.yellow[200],
                        ),
                        width: 80,
                        height: 80,
                        child: const Center(child: Text('pants'),),
                      ),
                       const SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                          color: Colors.green[200],
                        ),
                        width: 80,
                        height: 80,
                        child: const Center(child: Text('shoes'),),
                      ),
                       const SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                          color: Colors.blue[200],
                        ),
                        width: 80,
                        height: 80,
                        child: const Center(child: Text('footwear'),),
                      ),
                       const SizedBox(width: 10,),
                       
                      Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                          color: Colors.brown[200],
                        ),
                        width: 80,
                        height: 80,
                        child: const Center(child: Text('kids'),),
                      ),
                    ],
                  ),
                ),
              const  SizedBox(height: 20,),
              
              ],
            );
          }
          }
        ),
      ),
    );
  }
}
