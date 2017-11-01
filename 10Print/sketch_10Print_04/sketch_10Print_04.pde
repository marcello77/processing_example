/*------------------------------------
 10Print
 Linee orizzontali e verticali 
 04 - Terza alterazione: incrementi nelle singole condizioni
 ------------------------------------*/

int x= 0;
int y = 0;
int step = width/5;
float randomValue = 0.9;


void setup() {
  size(400, 400);
  background(255);

  //griglia di background
  float gridSize = width/40;
  for (int i= 0; i<width; i+=gridSize) { 
    strokeWeight(0.5);
    stroke(240);
    line(0, i, width, i); //linea verticale
    line(i, 0, i, height);//linea orizzontale
  }
}

void draw() {

  if (y <= height-step/2) { 

    strokeWeight(2);
    stroke(0);
    if (random(1)<randomValue) { 
      line(x+step, y, x+step, y+step); //linea verticale
      x += step;
    } else {
      line(x, y+step, x+step, y+step);//linea orizzontale
      y += step;
    }

    //per cambiare riga
    if (x>width-step) {
      x = 0;
      y += step;
    }   
    println("X = "+x+" and Y ="+y);
  }
}