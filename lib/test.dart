import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Prueba IAS",
      home: Formato(),
    );
  }
}

class Formato extends StatefulWidget {
  @override
  FormState createState() => FormState();
}

class FormState extends State<Formato> {
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();

    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFFffbb00)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vista Flutter"),
        ),
        body: new Container(
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
            controller: myController,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFFffbb00),
            child: new Text(
              "OK",
              style: const TextStyle(
                fontSize: 25.0,
              ),
            ),

            // Cuando el usuario pulsa el botón, muestra un diálogo de alerta con el
            // texto que el usuario ha digitado en nuestro campo de texto.
            onPressed: () {
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Recupera el texto que el usuario ha digitado utilizando nuestro
                      // TextEditingController
                      content: Text("Bienvenido " + myController.text),
                    );
                  });
            }),
      ),
    );
  }
}
