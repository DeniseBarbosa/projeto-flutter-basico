import 'package:flutter/material.dart';
import 'package:projeto_1/components/login/botao_login.dart';
import 'package:projeto_1/controllers/login_controller.dart';
import 'package:projeto_1/widgets/text_field.dart';

class PaginaLogin extends StatelessWidget {
  final LoginController _controller = LoginController(); //autenticação cod5

  PaginaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, //colocar o icone pessoa centro
          mainAxisAlignment:
              MainAxisAlignment.center, //colocar o icone pessoa centro
          children: [
            Icon(
              Icons.people_alt, size: 98, // aumentar o tamanho do icone
            ),
            TextFieldWidget(
              Label: 'Login',
              onChanged: _controller.setLogin,
            ), // coloca o login em cima da caixa de digitação
            TextFieldWidget(
              Label: 'Senha',
              onChanged: _controller.setSenha,
              obscureText: true, //=> oculta a senha
            ),

            //Spacer(), //empurra o botão para baixo final
            SizedBox(
              height: 15,
            ),

            BotaoLogin(
              //botaõ login cod10
              loginController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
