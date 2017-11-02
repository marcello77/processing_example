/*
Costruzione della griglia utilizzando
gli array bidimensionali

1 - Scrittura della classe e disegno del singolo elemento

*/

Cella griglia;

void setup(){
  size(400,400);
  background(255);
}

void draw(){
  
  griglia = new Cella(0,0,40,40);
  griglia.mostra();
}

/*
Classe Cella
*/
class Cella {

  /*Variabili*/
  float x,y,w,h;
  
  /*Costruttore*/
  Cella(float xpos, float ypos, float larghezza, float altezza){
  
      x = xpos;
      y = ypos;
      w = larghezza;
      h = altezza;
  }
  
  /*Metodo per mostrare il singolo elemento*/
  void mostra(){
    fill(random(255));
    noStroke();
    //ellipseMode(CENTER);
    //rectMode(CENTER);
    rect(x,y,w,h);
    //ellipse(x,y,w,h);
  }
}