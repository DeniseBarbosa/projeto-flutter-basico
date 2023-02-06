import 'package:flutter/material.dart';

class PaginaLogin extends StatelessWidget {
  const PaginaLogin({super.key});

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
            const TextField(
              //coloca uma linha de baixo do icone pessoa
              //decoration: InputDecoration(hintText: 'Login'), //coloca o login dentro da caixa de digitação
              decoration: InputDecoration(
                  label: Text(
                      'Login')), // coloca o login em cima da caixa de digitação
            ),
            const TextField(
              //coloca uma linha de baixo do icone pessoa
              decoration: InputDecoration(label: Text('Senha')),
              obscureText: true, //esconder a senha 
            ),

            //Spacer(), //empurra o botão para baixo final
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text('Login')) // colocar um botão login
          ],
        ),
      ),
    );
  }
}
