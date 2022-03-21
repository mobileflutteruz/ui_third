import 'package:dars8/router/my_router.dart';
import 'package:dars8/screens/first_page.dart';
import 'package:dars8/screens/home_page.dart';
import 'package:dars8/screens/second_page.dart';
import 'package:dars8/screens/third_page.dart';
import 'package:dars8/widgets/circle_letter.dart';
import 'package:dars8/widgets/my_stars.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final MyRouter _forRouter = MyRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    home: FirstPage()
    );
  }
}
