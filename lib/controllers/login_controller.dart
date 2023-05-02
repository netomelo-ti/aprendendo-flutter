import 'package:flutter/material.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _usuario;
  String? _senha;

  setUsuario(String value) => _usuario = value;
  setSenha(String value) => _senha = value;

  Future<bool> auth() async{
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;
    return _usuario! == 'admin' && _senha! == 'admin';
  }
  
}