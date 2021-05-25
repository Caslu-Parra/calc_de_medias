import 'package:calc_de_medias/controller/media_controller.dart';
import 'package:calc_de_medias/views/components/espacamento_h.dart';
import 'package:calc_de_medias/views/components/espacamento_w.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class MediaSimples extends StatefulWidget {
  @override
  _MediaSimplesState createState() => _MediaSimplesState();
}

class _MediaSimplesState extends State<MediaSimples> {
  // instanciação do controller:
  MediaController _controller = MediaController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: DrawerInicio(),
      appBar: AppBar(
        title: Text('Média Simples'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                EspacamentoH(h: 20),
                Image.asset(
                  'assets/images/calc.gif',
                  width: 200,
                  height: 200,
                ),
                // Container de espaçamento:
                EspacamentoH(h: 20),
                // Campo de entrada de moeda:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Peso:
                    Expanded(
                        flex: 1,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'Nota 1'),
                          onChanged: (value) {
                            setState(() {
                              _controller.setNota(
                                  double.parse(value) ?? 0.00, 1);
                            });
                          },
                        )),
                    // Container de espaçamento:
                    EspacamentoW(w: 10),
                    // Altura
                    Expanded(
                      flex: 1,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Nota 2'),
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            _controller.setNota(double.parse(value) ?? 0.00, 2);
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Peso:
                    Expanded(
                        flex: 1,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(labelText: 'Nota 3'),
                          onChanged: (value) {
                            setState(() {
                              _controller.setNota(
                                  double.parse(value) ?? 0.00, 3);
                            });
                          },
                        )),
                    // Container de espaçamento:
                    EspacamentoW(w: 10),
                    // Altura
                    Expanded(
                      flex: 1,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Nota 4'),
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            _controller.setNota(double.parse(value) ?? 0.00, 4);
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  child: ElevatedButton(
                      onPressed: () async {
                        _controller.calcular();
                        Alert(
                            context: context,
                            type: _controller.figura,
                            title: _controller.titulo,
                            desc: _controller.campoResultado.text,
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "Ok",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                width: 120,
                              )
                            ],
                          ).show();
                        setState(() {});
                      },
                      child: Text("Obter média")),
                ),
                // Linha com os campos de resultado:
              ],
            ),
          ),
        ),
      ),
    );
  }
}
