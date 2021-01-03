import 'package:flutter/material.dart';
import 'package:sharedprefrences/Screens/Home.dart';
import 'package:sharedprefrences/Screens/Settings.dart';

var route = <String , WidgetBuilder>{
  Home.ID : (context) => Home() ,
  Settings.ID : (context) => Settings() ,
} ;