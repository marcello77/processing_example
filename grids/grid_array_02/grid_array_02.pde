/*
Costruzione della griglia utilizzando
 gli array bidimensionali
 
 2 - Array modimensionale
 
 */

Cella[] griglia;

int riga;
int dim = 40;

void setup() {
  size(400, 400);
  background(255);

  riga = width/dim;

  griglia = new Cella[riga];

  println(griglia.length); //lunghezza dell'array

  for (int i = 0; i<griglia.length; i++) {
    griglia[i] = new Cella(i*dim, 0, dim, dim);
    griglia[i].mostra();
    println("i = "+i);
  }
}

void draw() {
}

/*
Classe Cella
 */
class Cella {

  /*Variabili*/
  float x, y, w, h;

  /*Costruttore*/
  Cella(float xpos, float ypos, float larghezza, float altezza) {

    x = xpos;
    y = ypos;
    w = larghezza;
    h = altezza;
  }

  /*Metodo per mostrare il singolo elemento*/
  void mostra() {
    fill(random(255));
    noStroke();
    //ellipseMode(CENTER);
    //rectMode(CENTER);
    rect(x, y, w, h);
    //ellipse(x,y,w,h);
  }
}