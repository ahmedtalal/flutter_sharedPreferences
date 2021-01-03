import 'package:flutter/material.dart';
import 'package:sharedprefrences/DataBases/SharedPref.dart';
import 'package:sharedprefrences/Screens/Settings.dart';

class Home extends StatefulWidget {
  static const String ID = "/home" ;

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int favColors = Colors.white.value ;
  getColor() async{
    var result  = await SharedPref.getInstances().getData();
    setState(() {
      favColors =  result ?? Colors.white.value ;
    });
  }     
  @override
  Widget build(BuildContext context) {
    getColor() ;
    return Scaffold(
      backgroundColor: Color(favColors),
      appBar: AppBar(
        title: Text(
          "Shared Prefernces" ,
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "Settings" ,
          ),
          onPressed: (){
            Navigator.of(context).pushNamed(Settings.ID) ;
          },
        ),
      ),
    );
  }
}