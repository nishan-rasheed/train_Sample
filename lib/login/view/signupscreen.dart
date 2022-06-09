
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/login/bloc/signup_bloc.dart';
import 'package:train/router/app_constants.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final _userController = TextEditingController(text: '');
  final _emailController = TextEditingController(text: '');
  final _phoneController = TextEditingController(text: '');
  final _passwordController = TextEditingController(text: '');

  final SignupBloc _signupBloc = SignupBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _signupBloc,
      child: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is SignUpSuccessState) {
            Navigator.pushNamed(
              context,
              RouteConstants.homescreen,
            );
          }
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey[300],
            body: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        controller: _userController,
                        decoration: InputDecoration(
                          hintText: 'username....',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        controller: _phoneController,
                        decoration: InputDecoration(
                          hintText: 'phone',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () async {
                          _signupBloc.add(
                            SignUpDoneEvent(
                              username: _userController.text,
                              email: _emailController.text,
                              phone: _phoneController.text,
                              password: _passwordController.text,
                            ),
                          );

                          //  try {
                          //     final userCredential =
                          //    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          //      email:_emailController.text,
                          //      password:_passwordController.text,);

                          //      String userId = userCredential.user!.uid;
                          //      print('________________');
                          //      print(userId);

                          //      CollectionReference userInfo =
                          //      FirebaseFirestore.instance.collection('userdetails');
                          //     await userInfo.doc(userId).set({
                          //        'NAME':_userController.text,
                          //        'EMAIL':_emailController.text,
                          //        'PHONE':_phoneController.text,
                          //        'PASSWORD':_passwordController.text,
                          //        'UID':userId,

                          //      });
                          //  }
                          //  catch (e) {
                          //  }
                        },
                        child: const Text('create'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
