// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:projeto_1/controllers/login_controller.dart';

//cod10

class BotaoLogin extends StatelessWidget {
  final LoginController loginController;
  const BotaoLogin({
    Key? key,
    required this.loginController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder<bool>(
              valueListenable: loginController
                  .inLoader, //vai gerar uma animação circulo de logando cod6
              builder: (_, inLoader, __) => inLoader
                  ? CircularProgressIndicator()
                  : //vai gerar uma animação circulo de logando cod6
                  ElevatedButton(
                      onPressed: () {
                        loginController.auth().then((resultado) {
                          //autenticação cod5
                          if (resultado) {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar( //estrutura para exibir mensagem de erro ao logar
                              SnackBar( //estrutura para exibir mensagem de erro ao logar
                                content: const Text( //estrutura para exibir mensagem de erro ao logar
                                    'Usuário ou senha digitado incorretamente'), //estrutura para exibir mensagem de erro ao logar
                                duration: const Duration(seconds: 5), //estrutura para exibir mensagem de erro ao logar
                              ),
                            );
                          }
                        });
                      },
                      child: Text('Login') // colocar um botão login
                      ),
            );
  }
}
