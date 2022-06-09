import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:train/login/login.dart';
import 'package:train/screens/home/home.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

final _emailController = TextEditingController(text: '');
final _passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: _emailController,
               decoration: InputDecoration(
                 hintText: 'email',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25),
                 ),
               ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                
                controller: _passwordController,
                obscureText: true,
               decoration: InputDecoration(
                 
                 hintText: 'password',
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25),
                 ),
               ),
              ),
            ),
           const SizedBox(height: 10,),
            ElevatedButton(onPressed: ()async{
             try {
               final userCredential = 
              await FirebaseAuth.instance.signInWithEmailAndPassword(
                 email:_emailController.text, 
                 password:_passwordController.text,);

                await  Navigator.of(context).push(
                    MaterialPageRoute<MaterialPageRoute>(builder: (context) {
                return const HomeScreen();
              },),);

             } on FirebaseAuthException catch (e) {
               if(e.code == 'user-not-found'){
               print('no user ');
               }
               else if (e.code == 'wrong-password') {
                 print('invalid password');
               }
             }


             
            }, 
            child:const Text('submit'),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                const Text('new here ?'),
                TextButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute<MaterialPageRoute>(builder: (context) {
                   return  SignupScreen();
                 },),);
                },
                 child:const Text('click here'),),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}
