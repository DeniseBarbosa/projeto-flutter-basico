import 'package:flutter/material.dart';

class PaginaApresentacao extends StatefulWidget {
  const PaginaApresentacao({super.key});

  @override
  State<PaginaApresentacao> createState() => _PaginaApresentacaoState();
}

class _PaginaApresentacaoState extends State<PaginaApresentacao> {
  @override //é executado assim que a pagina é criada, ele vai ser a primeira coisa a ser executada
  void initState() {
    super.initState();
    //vamos aguardar 3 segundos,apos os 3 seg vai ser redirecionado o usuario para a pagina de login
    //pushReplacementNamed => n quer da a opção para o usuario voltar para a pagina de apresentação
    //Navigator.of(context) => api de navegação padrão
    Future.delayed(const Duration(seconds: 3))
        .then((_) => Navigator.of(context).pushReplacementNamed('/login')
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade900,
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white, //aqui fica o circulo de carregamento
        ),
      ),
    );
  }
}
