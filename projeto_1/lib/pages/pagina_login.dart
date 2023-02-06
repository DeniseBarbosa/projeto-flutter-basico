import 'package:flutter/material.dart';
import 'package:projeto_1/controllers/login_controller.dart';

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
            TextField(
              //coloca uma linha de baixo do icone pessoa
              //decoration: InputDecoration(hintText: 'Login'), //coloca o login dentro da caixa de digitação
              decoration: InputDecoration(
                  label: Text(
                      'Login')), // coloca o login em cima da caixa de digitação
              onChanged: _controller.setLogin, //autenticação cod5
            ),
            TextField(
              //coloca uma linha de baixo do icone pessoa
              decoration: InputDecoration(label: Text('Senha')),
              obscureText: true, //esconder a senha
              onChanged: _controller
                  .setSenha, //autenticação cod5 => é desparado toda vez que o usuario faz uma manipulação de imput
              //=> ele vai digitar uma coisa então o onChanged é ativado
            ),

            //Spacer(), //empurra o botão para baixo final
            SizedBox(
              height: 15,
            ),

            ValueListenableBuilder<bool>(
              valueListenable: _controller
                  .inLoader, //vai gerar uma animação circulo de logando cod6
              builder: (_, inLoader, __) => inLoader
                  ? CircularProgressIndicator()
                  : //vai gerar uma animação circulo de logando cod6
                  ElevatedButton(
                      onPressed: () {
                        _controller.auth().then((resultado) {
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
            )
          ],
        ),
      ),
    );
  }
}
