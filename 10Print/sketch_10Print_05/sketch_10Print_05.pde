/*------------------------------------
 10Print
 05 - Quarta alterazione: linee diagonali alternate
 ------------------------------------*/

int x= 0;
int y = 0;
int step = width/5;
float randomValue = 0.5;


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
  strokeWeight(2);
  stroke(0);
  if (y <= height) { //to stop the loop once the max height is reached
    if (random(1)<randomValue) {
      line(x, y, x+step, y+step);
    } else {
      line(x, y+step, x+step, y);
    }
    
    x += step;

    if (x>width) {
      x = 0;
      y += step;
    }   
    println("X = "+x+" and Y ="+y);
  }
}