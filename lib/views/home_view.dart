import 'package:calc_de_medias/views/components/espacamento_h.dart';
import 'package:calc_de_medias/views/components/logo.dart';
import 'package:calc_de_medias/views/components/titulo2.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora de Médias"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(),
                  EspacamentoH(
                    h: 20,
                  ),
                  Titulo2(
                    txt: 'Calculadora de Médias',
                  ),
                  EspacamentoH(
                    h: 10,
                  ),
                  Text(
                      'Bem-vindo(a) a Calculadora de Médias! Escolha o tipo de média que deseja calcular clicando em um dos botões!'),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/mSimples');
                      },
                      child: Text("Média Simples")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/mPonderada');
                      },
                      child: Text("Média Ponderada")),
                ],
              ),
            ),
          ),
        ));
  }
}
