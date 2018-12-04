class Population {
  DNA [] myPop;
  int ind;
  int genes;
  int numDePadres = 5;
  float probabilidadDeMutacion = 0.4;
  int numeroDeGenesMutados=1;
  Population(int i_, int g_) {
    ind = i_;
    genes = g_;
    myPop = new DNA[ind];
    for (int i = 0; i < ind; i++) {
      myPop[i] = new DNA(genes);
    }
  }
  void showData() {
    for (int i = 0; i < 500/32; i++) {
      myPop[i].showData();
     
    }
  }
  
  void showFitness(String target){
    for (int i = 0; i < 500/32; i++) {
      println(myPop[i].Rank(target));
    }
  }
  
  void showTextFit(String target) {
    for (int i = 0; i < 500/32; i++) {
      print(myPop[i].Rank(target));
      print(", ");
      myPop[i].showData();
      myPop[i].showText((32*(i+1)));
    }
  }
 
  void starEvolucion(String target){
    //Seleccion natural
    String piscina [] = new String [ind];
    
    //selection
    for (int i = 0; i <ind; i++) { 
      String fitness = str(myPop[i].Rank(target));
      if(fitness.length()==1){
      fitness = "0" + fitness;
      }
      String adnStr = myPop[i].getADNstring();
      String sorted = fitness + "," + adnStr;
      piscina[i] =  sorted; 
     }
      piscina = sort(piscina);
      
        for (int i = 0; i <ind; i++){
        piscina[i] = piscina[i].substring(3); 
    }
   
    String seleccionados[] = new String [numDePadres];

    int j =0;
    for (int i = ind-numDePadres; i<ind; i++){
      seleccionados[j] = piscina[i];

      j++;
    }
    //sex
    for(int i = 0; i< ind-numDePadres; i++){
    int pivoteAleatoreo= int(random(0,(genes-1))); //escoge indice al azar
    int muestraAleatorea = int(random(0,(numDePadres-1))); // escoge padra al azar
    int muestraAleatorea2 = int(random(0,(numDePadres-1)));
    if (muestraAleatorea==muestraAleatorea2){
      muestraAleatorea2 = int(random(0,(numDePadres-1)));
    }
    char [] adn_caracteres= seleccionados[muestraAleatorea2].toCharArray();
    char [] sample = seleccionados[muestraAleatorea].toCharArray();
    
    for(int k = pivoteAleatoreo; k<genes; k++){
      adn_caracteres[k]=sample[k]; //intercambia caracteres
    }
    piscina[i] = new String (adn_caracteres);
    }

     //numeroDeGenesMutados
     for(int x = 0 ; x<ind; x++){
       float mutation = random(0,1);
       if(mutation<=probabilidadDeMutacion){
         for(int z=0; z<numeroDeGenesMutados; z++){
         Base gen_con_mutacion = new Base();
         int randomLetter = int(random(0,genes));
         char[] mutt = piscina[x].toCharArray();
         mutt[randomLetter]= gen_con_mutacion.letra;
       piscina[x] = new String(mutt);
         }
     }
     }

    //Actualizar Poblacion
    for(int i=0; i<ind;i++){
     char[] genoma = piscina[i].toCharArray(); 
      for(int k = 0; k<genes; k++){  
        myPop[i].myGenes[k].letra = genoma[k];
        }
     }

  }
}
