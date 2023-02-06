import 'package:flutter/material.dart';
import 'package:projeto_1/pages/home_page.dart';
import 'package:projeto_1/pages/pagina_apresentacao.dart';
import 'package:projeto_1/pages/pagina_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //criação das rotas
      initialRoute: '/apresentacao', //rota inicial
      //declaração de rotas
      routes: {
        //primeira pagina na aplicação
        '/apresentacao':(_) => const PaginaApresentacao(),
        '/login':(_) =>  PaginaLogin(),
        '/home':(_) => const HomePage(),
      },
    );
  }
}
