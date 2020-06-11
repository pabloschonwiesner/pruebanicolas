import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebanico/pages/MyHomePage.dart';
import 'package:pruebanico/provider/UsuarioProvider.dart';

void main() {
  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      ChangeNotifierProvider(create: (context) => UsuarioProvider(),)
    ],
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba Nico',
      home: MyHomePage(),
    );
  }
}


