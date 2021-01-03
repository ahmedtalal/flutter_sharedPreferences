import 'package:flutter/material.dart';
import 'package:sharedprefrences/DataBases/SharedPref.dart';

class Settings extends StatefulWidget {
  static const String ID = "/settings"; 
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int favColors = Colors.white.value ;
  getColor()async{
    var result = await SharedPref.getInstances().getData();
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
          "Settings Page" ,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            RadioListTile(
              title: Text("Orange") ,
              value: Colors.orange.value ,
              groupValue: favColors,
              onChanged: (newColors){
                setState(() {
                  favColors = newColors ;
                });
                SharedPref.getInstances().savedData(newColors) ;
              },
            ) ,
            RadioListTile(
              title: Text("Red") ,
              value: Colors.red.value ,
              groupValue: favColors,
              onChanged: (newColors){
                setState(() {
                  favColors = newColors ;
                });
                SharedPref.getInstances().savedData(newColors);
              },
            ) ,
            RadioListTile(
              title: Text("Blue") ,
              value: Colors.blue.value ,
              groupValue: favColors,
              onChanged: (newColors){
                setState(() {
                  favColors = newColors ;
                });
                SharedPref.getInstances().savedData(newColors) ;
              },
            )
          ],
        ),
      ),
    );
  }
}