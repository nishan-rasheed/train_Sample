import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train/login/login.dart';
import 'package:train/router/app_constants.dart';
import 'package:train/screens/home/home.dart';

class AppRouter{
  Route onGenerateRoute(RouteSettings route){
    switch (route.name) {
      case RouteConstants.loginscreen :
        return MaterialPageRoute<MaterialPageRoute>(
          builder:(context) => LoginScreen(),);
      case RouteConstants.homescreen:
        return MaterialPageRoute<MaterialPageRoute>(
          builder:(context) =>const HomeScreen(),);
     
      default: return MaterialPageRoute<MaterialPageRoute>(
          builder:(context) => LoginScreen(),);
    }

  }
}
