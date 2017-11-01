/*------------------------------------
 10Print
 02 - Linee orizzontali e verticali 
 Prima alterazione della griglia
 ------------------------------------*/

int x = 0;
int y = 0;
//float step = random(50); //ancora più random
int step = width/5;

void setup() {
  size(400, 400);
  background(255);


  //griglia di background
  int gridSize = width/40;
  for (int i= 0; i<width; i+=gridSize) { 
    strokeWeight(0.5);
    stroke(240);
    line(0, i, width, i); //linea verticale
    line(i, 0, i, height);//linea orizzontale
  }
}

void draw() {

  if (y <= height-step) { 
    strokeWeight(2);
    stroke(0);
    float randomValue = random(1); 
    //senza il random ottengo una scala 
    //(vedi esempio successivo)
    if (randomValue<0.9) {
      line(x+step, y, x+step, y+step); //linea verticale
    } else {
      line(x, y+step, x+step, y+step); //linea orizzontale
    }

    x +=step;

    if (x >= width-step) {
      x = 0;
      y += step;
    }
    println("X = "+x+" and Y ="+y);
  }
}