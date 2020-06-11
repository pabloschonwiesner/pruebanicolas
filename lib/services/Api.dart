import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pruebanico/models/Usuarios.dart';

class Api {
  final String urlBase = 'https://jsonplaceholder.typicode.com';

  Future<List<Usuario>> getUsuarios() async {
    try {
      final response = await http.get('$urlBase/users');
      if(response.statusCode == 200) {
        List<Usuario> usuarios = usuarioFromJson(response.body);
        // usuarios.removeLast();
        // usuarios.removeLast();
        // usuarios.removeLast();
        return usuarios;
      } else {
        return [];
      }
    } catch(e) {
      print(e);
      return [];
    }
  }


}