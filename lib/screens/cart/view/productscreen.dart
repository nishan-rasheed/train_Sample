
import 'package:flutter/material.dart';
import 'package:train/screens/cart/cart.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CART'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: const TextField(
              decoration: InputDecoration(
                hintText: '   search your items here...',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  print('green tapped');
                  showDialog<dynamic>(
                    context: context,
                    builder: (context) {
                 
                      return
                          Container(
                   margin:const EdgeInsets.symmetric(
                     horizontal: 30,
                     vertical: 30,),
                          color: Colors.teal,
                          height: 200,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  [
                              GestureDetector(
                                onTap: (){
                                  print('tapped');
                                },
                                child: Container(
                                  margin: const  EdgeInsets.only(top: 20),
                                  height: 150,
                                  width: 200,
                                  color: Colors.amber[100],
                                  child:const  Center(child: Text('ADD IMAGE'),),
                                ),
                              ),
                             const  SizedBox(height: 20,),
                             Card(
                                shape: RoundedRectangleBorder(
                         borderRadius:BorderRadius.circular(20), ),
                         margin:const EdgeInsets.symmetric(horizontal: 20),
                                child:const   TextField(
                                  decoration: InputDecoration(
                                    hintText: '   catogary',
                                    border: InputBorder.none,
                                  ),
                                ),),
                                 const  SizedBox(height: 20,),
                             Card(
                                shape: RoundedRectangleBorder(
                         borderRadius:BorderRadius.circular(20), ),
                         margin:const EdgeInsets.symmetric(horizontal: 20),
                                child:const   TextField(
                                  decoration: InputDecoration(
                                    hintText: '   color',
                                    border: InputBorder.none,
                                  ),
                                ),),
                                 const  SizedBox(height: 20,),
                             Card(
                                shape: RoundedRectangleBorder(
                         borderRadius:BorderRadius.circular(20), ),
                         margin:const EdgeInsets.symmetric(horizontal: 20),
                                child:const   TextField(
                                  decoration: InputDecoration(
                                    hintText: '   size',
                                    border: InputBorder.none,
                                  ),
                                ),),
                                 const  SizedBox(height: 20,),
                             Card(
                                shape: RoundedRectangleBorder(
                         borderRadius:BorderRadius.circular(20), ),
                         margin:const EdgeInsets.symmetric(horizontal: 20),
                                child:const   TextField(
                                  decoration: InputDecoration(
                                    hintText: '  prize',
                                    border: InputBorder.none,
                                  ),
                                ),),
                                 const  SizedBox(height: 30,),
                                ElevatedButton(
                                  onPressed: (){
                                    try {
                                      
                                    } catch (e) {
                                    }
                                  }, 
                                  child:const Text('Submit'),),
                            ],
                          ),
                          );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 165,
                  height: 45,
                  child: const Center(
                    child: Text('ADD ITEMS'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
               print('red tapped');
               Navigator.of(context).push(MaterialPageRoute<MaterialPageRoute>
                  (builder:(context) {
                    return const WishList();
                  },),);                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[400],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 165,
                  height: 45,
                  child: const Center(
                    child: Text('WISH LIST'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
