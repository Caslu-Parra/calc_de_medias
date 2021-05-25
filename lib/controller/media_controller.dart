import 'package:flutter/material.dart';
import 'package:calc_de_medias/model/main_model.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MediaController {
  double nota1, nota2, nota3, nota4;
  double peso1, peso2, peso3, peso4;
  
  var figura = AlertType.error;
  var titulo = "Reprovado(a)";
  var campoResultado = TextEditingController();

  void setNota(value, nota) {
    if (nota == 1) {
      nota1 = value;
    } else if (nota == 2) {
      nota2 = value;
    } else if (nota == 3) {
      nota3 = value;
    } else {
      nota4 = value;
    }
  }

  void setPeso(value, peso) {
    if (peso == 1) {
      peso1 = value;
    } else if (peso == 2) {
      peso2 = value;
    } else if (peso == 3) {
      peso3 = value;
    } else {
      peso4 = value;
    }
  }

  void calcular() {
    MediaModel model = MediaModel();

    campoResultado.text =
        model.calculoSimples(nota1, nota2, nota3, nota4).toString();
    if (double.parse(campoResultado.text) >= 6) {
      figura = AlertType.success;
      titulo = "Aprovado(a)";
    } else {
      figura = AlertType.error;
      titulo = "Reprovado(a)";
    }
  }
}
