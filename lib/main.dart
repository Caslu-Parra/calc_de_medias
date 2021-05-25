import 'package:calc_de_medias/views/mPonderada_view.dart';
import 'package:flutter/material.dart';
import 'package:calc_de_medias/views/home_view.dart';
import 'package:calc_de_medias/views/mSimples_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Médias',
      // Rota Inicial:
      initialRoute: '/',
      // Rotas do projeto:
      routes: {
        '/': (context) => HomeView(),
        '/mSimples': (context) => MediaSimples(),
        '/mPonderada': (context) => MediaPonderada(),
      },
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}