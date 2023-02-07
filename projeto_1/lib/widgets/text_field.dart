// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String Label;
  final bool obscureText; //=> oculta a senha

  const TextFieldWidget({
    Key? key,
    required this.onChanged,
    required this.Label,
     this.obscureText = false, //=> oculta a senha
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      //coloca uma linha de baixo do icone pessoa
      //decoration: InputDecoration(hintText: 'Login'), //coloca o login dentro da caixa de digitação
      decoration: InputDecoration(
          label: Text(Label)), // coloca o login em cima da caixa de digitação
      onChanged: onChanged, //autenticação cod5
      obscureText: obscureText,
    );
  }
}
