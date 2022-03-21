import 'package:dars8/screens/home_page.dart';
import 'package:dars8/screens/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static generateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => SecondPage());
      
    }
  }

  onGenerateRoute() {}
}
