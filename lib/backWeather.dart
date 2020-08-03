import 'package:flutter/material.dart';

class backWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        new GradienntBack(),
        new Positioned(
            bottom: 0.0,
            child: new Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              color: Colors.white,
            )
            )
      ],
    );
  }
}

class GradienntBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [Color(0xFFffbb00), Color(0xFFffbb00)],
              begin: const FractionalOffset(1.0, 1.0),
              end: const FractionalOffset(1.0, 1.9))),
    );
  }
}
