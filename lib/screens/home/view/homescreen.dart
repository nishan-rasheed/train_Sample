import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:train/screens/cart/cart.dart';
import 'package:train/screens/first/first.dart';
import 'package:train/screens/profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int _selectedIndex = 0;
List<Widget> navScreens =  [
FirstScreen(),
const ProductScreen(),
const Text('third'),
const ProfileScreen(),
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(child: navScreens.elementAt(_selectedIndex)),
      backgroundColor: Colors.grey[400],
      bottomNavigationBar:GNav(
        tabs: const [
          GButton(
            icon:Icons.home_filled,
            text: 'home',
          ),
          GButton(
            icon:Icons.shopping_cart_rounded,
            text: 'search',
          ),
          GButton(
            icon:Icons.notifications,
            text: 'alert',
          ),
          GButton(
            icon:Icons.person,
            text: 'profile',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        ),
    );
  }
}
