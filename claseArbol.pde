class Tree {

  //Atributos

  Node [] Trunk; //Declarando Array de nodos



  //Constructor

  Tree(Node n) {

    Trunk = new Node[1];

    Trunk[0] = n;

  }

  //Métodos

  String checkSide(Node n, int val) {

    String res;

    if (val <= int(n.value)) {

      res = "left";

    } else {

      res = "right";

    }

    return res;

  }



  boolean checkEmpty(Node n, String side) {

    boolean empty = false;

    if (side == "left") {

      if (n.left == null) {

        empty = true;

      }

    }

    if (side == "right") {

      if (n.right == null) {

        empty = true;

      }

    }

    return empty;

  }



  void addLeftChild(Node n) {

    n.left = str(Trunk.length);

  }



  void addRightChild(Node n) {

    n.right = str(Trunk.length);

  }

  

  void createNode(Node n, int val){

    String lado;

    lado = checkSide(n, val);

    if(lado == "left"){

      boolean vacio;

      vacio = checkEmpty(n, lado);

      if(vacio == true){

        addLeftChild(n);

        Node nuevo;

        nuevo = new Node(Trunk.length,int(n.id),val);

        Trunk = (Node []) append(Trunk, nuevo);

      }

      else{

        createNode(Trunk[int(n.left)],val);

      }

    }

    

    if(lado == "right"){

      boolean vacio;

      vacio = checkEmpty(n, lado);

      if(vacio == true){

        addRightChild(n);

        Node nuevo;

        nuevo = new Node(Trunk.length,int(n.id),val);

        Trunk = (Node []) append(Trunk, nuevo);

      }

      else{

        createNode(Trunk[int(n.right)],val);

      }

    }

  }




  void printData(int i) {

    println(arbolito.Trunk[i].id);

    println(arbolito.Trunk[i].parent);

    println(arbolito.Trunk[i].value);

    println(arbolito.Trunk[i].left);

    println(arbolito.Trunk[i].right);

    println(arbolito.Trunk[i].order);
    
    println(arbolito.Trunk[i].orderLeft);
    
    println(arbolito.Trunk[i].orderRight);
  }



void acomodar(Node n){

if (n.right != null){              //revisarHijoDch
    if (n.orderRight == true){                       //revisarOrderRight
       if (n.order == false){                                            //revisarOrder
       Ordenar(n);
       }
  } else {
  irDch(n);
  }
} else {
n.orderRight=true;
}

if (n.order==false){     //revisarOrder
   Ordenar(n);
}
if (n.left == null){    //revisarHijoIzq
 n.orderLeft=true;
 irArriba(n);
} 
  if(n.orderLeft==false){                     //revisarOrderLeft
   irIzq(n); 
  }
  if(n.parent!=null){            //revisarRoot
   irArriba(n); 
  } 
      }   //FIN

void irIzq(Node n){
  n.orderLeft=true;

acomodar(Trunk[int(n.left)]);
}

void irDch(Node n){
  n.orderRight=true;

acomodar(Trunk[int(n.right)]);
}

void Ordenar(Node n){
  newX[posnewX]=int (n.value);
  n.order= true;
  posnewX++;

}

void irArriba(Node n){
 
 acomodar(Trunk[int(n.parent)]);
}

void goOut(){
  int confirm = x.length;
 if (str(posnewX)==str(confirm)){
 println(newX);
 } 
}

boolean revisarIzq(Node n){
boolean izq = true;
if (n.left==null){
  izq = false;
}
return izq;
}

boolean revisarDch(Node n){
boolean dch = true;
if (n.right==null){
  dch = false;
}
return dch;
}

boolean checkOrderLeft (Node n){
 boolean OL = n.orderLeft; 
 return OL;
}


}
