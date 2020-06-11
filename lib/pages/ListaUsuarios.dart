import 'package:flutter/material.dart';
import 'package:pruebanico/models/Usuarios.dart';
import 'package:pruebanico/services/Api.dart';

class ListaUsuarios extends StatefulWidget {

  @override
  _ListaUsuariosState createState() => _ListaUsuariosState();
}

class _ListaUsuariosState extends State<ListaUsuarios> {
  Api _api = Api();
  List<Usuario> usuarios = List<Usuario>();

  @override
  void initState() { 
    super.initState();
    // getUsuarios();
  }

  getUsuarios() async {
    usuarios = await _api.getUsuarios();
    setState(() {});
  }
 
 @override
 Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Prueba'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () => getUsuarios(),
        )
      ],
    ),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      child: FutureBuilder(
        future: _api.getUsuarios(),
        builder: (context, AsyncSnapshot<List<Usuario>> snapshot) {
          if(snapshot.hasError) {
            return Center(child: Text('error'));
          }

          if(!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data[index].name),
                );
              }
            );
          }
        },
      )
    ),
  );
 }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//     appBar: AppBar(
//       title: Text('Prueba'),
//       actions: <Widget>[
//         IconButton(
//           icon: Icon(Icons.refresh),
//           onPressed: () => getUsuarios(),
//         )
//       ],
//     ),
//     body: Container(
//       width: double.infinity,
//       height: double.infinity,
//       child: ListView.builder(
//         itemCount: usuarios.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(usuarios[index].name),
//           );
//         }
//       )
//     ),
//   );
//  }
}