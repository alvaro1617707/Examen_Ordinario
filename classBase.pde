class Base {
  //Atributos
  char letra;
  int valor;
  //Constructor
  Base() {
    valor = int(random(47,57));
    letra = (char) valor;
  }
  //Métodos
  void showData(){
    print(letra);
  }
}
