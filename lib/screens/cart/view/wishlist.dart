import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Wishlist'),
          automaticallyImplyLeading: false,
          ),
          body: Column(
            children:[
              const  SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(25),
                ),
                margin:  const EdgeInsets.symmetric(horizontal: 20),
                child:  const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'search your items...',
                    border: InputBorder.none,
                  ),
                ),),
              const  SizedBox(height: 20,),
               Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  // mainAxisSpacing:10 ,
                  // crossAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    margin:  const EdgeInsets.all(15),
                    color: Colors.yellow[200],
                    child:  const  Center(child: Text('fghgb')),
                  );
                },
              ),
            ),
            ],
          ),
      ),
    );
  }

}
