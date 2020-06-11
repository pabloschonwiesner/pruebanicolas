import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pruebanico/provider/UsuarioProvider.dart';

class ListaUsuarios2 extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   UsuarioProvider auto = Provider.of<UsuarioProvider>(context);

   return Scaffold(
    appBar: AppBar(
      title: Text('Prueba'),    
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () => auto.getUsuarios(),
        )
      ],  
    ),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemCount: auto.usuarios.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(auto.usuarios[index].name),
          );
        }
      )
      
    ),
  );
 }
}