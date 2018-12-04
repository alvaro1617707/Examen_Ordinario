class Node {

  //Atributos

  String id;

  String parent;

  String value;

  String left;

  String right;
  
  boolean order;
  
  boolean orderLeft;
  
  boolean orderRight;

  //Constructor para un nodo raíz

  Node(int v) {

    id = "0";

    parent = null;

    value = str(v);

    left = null;

    right = null;
    
    order = false; 
    orderLeft = false;
    orderRight = false;
  }

//Constructor para nodo rama

  Node(int i, int p, int v) {

    id = str(i);

    parent = str(p);

    value = str(v);

    left = null;

    right = null;
    
    order = false;
    orderLeft = false;
    orderRight = false;
  }



  //Métodos

}
