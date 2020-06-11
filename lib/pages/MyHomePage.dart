import 'package:flutter/material.dart';
import 'package:pruebanico/pages/ListaUsuarios.dart';
import 'package:pruebanico/pages/ListaUsuarios2.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHomePage'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Lista de usuarios'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ListaUsuarios())),
            ),
            RaisedButton(
              child: Text('Lista de usuarios 2'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ListaUsuarios2())),
            )
          ],
        )
      )
    );
  }
}