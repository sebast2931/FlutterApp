import 'package:flutter/material.dart';
import 'package:prueba_app/backWeather.dart';
import 'package:prueba_app/view.dart';

header createState() => header();


class header extends StatelessWidget{


   // ignore: non_constant_identifier_names
  String Counter = "S";
  String valor = "";

  void Prueba(e){

    // setState((){
      
    // });
    Counter = e;

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final Te = (
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
        style: const TextStyle(
              fontSize: 25.0,
              

        ),
        onChanged: (texto) {
          valor = texto;
  },
      )

    );

    final buttonPrueba = new InkWell(
      child: new Container(
        
        margin: new EdgeInsets.only(
          top: 60.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Color(0xFFf38b02),
              offset: new Offset(10.0, 10.0),
              blurRadius: 30.0
            )
          ],
          borderRadius: new BorderRadius.circular(30.0),
          color: Color(0xFFfeb800),
        ), 
        child: RaisedButton(
          child: new Text(
            "Contador",
            style: const TextStyle(
              fontSize: 25.0,
             // color: Colors.white,
              //fontWeight: FontWeight.w900,
            ),
          ),
          onPressed:  () {
            Prueba("Sebastian");
          },
          
        ),
      ),
    );

    final button = new InkWell(
      child: new Container(
        
        margin: new EdgeInsets.only(
          top: 40.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50.0,
        width: 180.0,
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Color(0xFFf38b02),
              offset: new Offset(10.0, 10.0),
              blurRadius: 30.0
            )
          ],
          borderRadius: new BorderRadius.circular(30.0),
          color: Color(0xFFfeb800),
        ), 
        child: RaisedButton(
          child: new Text(
            "Presionar",
            style: const TextStyle(
              fontSize: 25.0,
             // color: Colors.white,
              //fontWeight: FontWeight.w900,
            ),
          ),
          onPressed: () {  
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => view()),
            );
          },
        ),
      ),
    );



    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new backWeather(),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(
              top: 50.0
            ),
            child: new Column(
              children: <Widget>[
                new Text(
                  "Bienvenido " +'$valor',
                  style: const TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
                TextField(
                  

                ),
                Te,
                button,
                buttonPrueba
              ],
            ),
          )
        ],
      ),
    );
  }
  
}