
// regra de negocio saber realizar a autenticação, quando o usuario começar a digitar atribuir o valor para o login
//cod5
import 'package:flutter/material.dart';

class LoginController {

  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false); //vai gerar uma animação circulo de logando cod6

// ignore: unused_field
String? _login;
setLogin(String value) => _login = value;
// ignore: unused_field
String? _senha;
setSenha(String value) => _senha = value;

Future<bool> auth() async{
  //logica mocada
  inLoader.value = true; //vai gerar uma animação circulo de logando cod6
  await Future.delayed(Duration(seconds: 2)); //vai gerar uma animação circulo de logando cod6
  inLoader.value = false; //vai gerar uma animação circulo de logando cod6
  return _login == 'admin' && _senha == '123';

}

}
