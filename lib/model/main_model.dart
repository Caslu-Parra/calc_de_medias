class MediaModel {
  // Método para converter:
  double calculoSimples(double nota1, double nota2, double nota3, double nota4) {
    return (nota1 + nota2 + nota3 + nota4)/4;
  }

   double calculoPonderado(double nota1, double nota2, double nota3, double nota4, double peso1, double peso2, double peso3, double peso4) {
    double mediaPond;

    mediaPond =  (nota1 * peso1) + (nota2 * peso2) + (nota3 * peso3) + (nota4 * peso4);
    mediaPond = mediaPond / (peso1 + peso2 + peso3 + peso4); 
    return mediaPond;
  }
}
