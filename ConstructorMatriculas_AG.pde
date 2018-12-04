Population miGente;
int Gen=0;
int metaGeneraciones=700;

void setup() {
  miGente = new Population(15,15);

}

void draw() {
  Gen++; 
   miGente.starEvolucion("1517384/1617707"); 
   miGente.showData();
   if (Gen == metaGeneraciones){
   noLoop();
   }
}
