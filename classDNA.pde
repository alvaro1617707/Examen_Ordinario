class DNA {
  //Atributos
  Base [] myGenes;
  
  //Constructor
  DNA(int tam) {
    myGenes = new Base[tam];
    for (int i = 0; i < tam; i++) {
      myGenes[i] = new Base();
    }
  }

  void showData() {
    for (int i = 0; i < myGenes.length; i++) {
      myGenes[i].showData();
    }
    println();
  }

  void showText(int posy) {
    textSize(32);
    String texto = "";
    for (int i = 0; i < myGenes.length; i++) {
      texto = texto + str(myGenes[i].letra);
    }
    text(texto, 75, posy);
  }

  int Rank(String target) {
    int rank = 0;
    if (target.length() != myGenes.length) {
      println("Tamaño diferente: Tarjet e Individuo");
    } else {
      char [] tarArray = target.toCharArray();
      for (int i = 0; i < tarArray.length; i++) {
        if (myGenes[i].letra == tarArray[i]) {
          rank++;
        }
      }
    }
    return rank;
  }
  String getADNstring(){
    String ADNstring = "";
    for (int i = 0; i < myGenes.length; i++){
     ADNstring = ADNstring + str(myGenes[i].letra);
    }
    return ADNstring;
  }
}
