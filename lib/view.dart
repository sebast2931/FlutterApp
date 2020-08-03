import 'package:flutter/material.dart';

class view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFFffbb00)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nueva Vista"),
        ),
        body: new Container(  
          child: FittedBox(           
            child: Image.asset("assets/Flutter.png"            
             ),
          ),
        ),
      ),
    );
  }
}
