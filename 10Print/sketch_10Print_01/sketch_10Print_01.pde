/*------------------------------------
 10Print
 01 - Griglia dinamica
 ------------------------------------*/

int x= 0;
int y = 0;
int step = width/5;
float randomValue = 0.65;

void setup() {
  size(400, 400);
  background(255);

  //griglia di background
  int gridSize = width/10;
  for (int i= 0; i<width; i+=gridSize) { 
    strokeWeight(1);
    stroke(240);
    line(0, i, width, i); //linea verticale
    line(i, 0, i, height);//linea orizzontale
  }
}

void draw() {
  //step = random(30);
  if (y <= height-step/2) { 

    strokeWeight(2);
    stroke(0);
    line(x+step, y, x+step, y+step); //linea verticale
    line(x, y+step, x+step, y+step);//linea orizzontale

    x += step;

    //per cambiare riga
    if (x>width-step) {
      x = 0;
      y += step;
    }   
    println("X = "+x+" and Y ="+y);
  }
}