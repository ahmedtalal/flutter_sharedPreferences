import 'package:flutter/material.dart';
import 'package:sharedprefrences/Routing.dart';
import 'package:sharedprefrences/Screens/Home.dart';

main() => runApp(MyApp()) ;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      initialRoute: Home.ID ,
      routes: route ,
    );
  }
}