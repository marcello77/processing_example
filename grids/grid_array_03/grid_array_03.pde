/*
Costruzione della griglia utilizzando
 gli array bidimensionali
 
 3 - Array bidimensionale
 
 */

Cella[][] griglia;

int riga;
int colonna;
int dim = 10;

void setup() {
  size(400, 400);
  background(255);
  noStroke();

  riga = width/dim;
  colonna = height/dim;
  griglia = new Cella[riga][colonna];

  println(griglia.length); //lunghezza dell'array

  for (int i = 0; i<griglia.length; i++) {
    for (int j = 0; j<griglia.length; j++) {
      griglia[i][j] = new Cella(i*dim, j*dim, dim, dim);
      //griglia[i][j].mostra();
      println("i = "+i+" | j = "+j);
    }
  }
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);//filtro
  griglia[int(random(riga))][int(random(colonna))].mostra();
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