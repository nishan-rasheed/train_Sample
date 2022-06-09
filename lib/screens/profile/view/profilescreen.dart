import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey[600],
                      ),
                    ),
                     Align(
                      child: Stack(
                        children: [   
                          const CircleAvatar(
                          radius: 60,
                        ),
                        Positioned(
                          bottom: -10,
                          right: -5,
                          child: IconButton(onPressed:(){
                            print('icon tapped');
                          },
                           icon:const Icon(Icons.add_a_photo),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
               
                children:const [
                  Text('NAME :',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),),
                  SizedBox(width: 30,),
                  Text('_____')
                ],
              ),
            ),
             const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
               
                children:const [
                  Text('Phone :',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),),
                  SizedBox(width: 30,),
                  Text('_____')
                ],
              ),
            ),
             const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
               
                children:const [
                  Text('Email :',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),),
                  SizedBox(width: 30,),
                  Text('_____')
                ],
              ),
            ),
             const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
               
                children:const [
                  Text('Blood Group :',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),),
                  SizedBox(width: 30,),
                  Text('_____')
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
