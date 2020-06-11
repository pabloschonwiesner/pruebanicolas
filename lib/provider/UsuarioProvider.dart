import 'package:flutter/material.dart';
import 'package:pruebanico/models/Usuarios.dart';
import 'package:pruebanico/services/Api.dart';

class UsuarioProvider extends ChangeNotifier {
  List<Usuario> _usuarios = List<Usuario>();
  String _nombre;
  int _edad;
  Api _api = Api();


  UsuarioProvider() {
    getUsuarios();
  }

  getUsuarios() async {
    List<Usuario> _lst = await _api.getUsuarios();
    print('despues del getUsuarios');
    setUsuarios(_lst);
  }



  List<Usuario> get usuarios => _usuarios;
  String get nombre => _nombre;
  int get edad => _edad;


  setUsuarios(List<Usuario> listaUsuarios) {
    _usuarios = listaUsuarios;
    notifyListeners();
  }


}