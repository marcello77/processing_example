/*
Costruzione della griglia 
 
 2 - Variazioni random al mouse click
 */

int x, y = 0;

float w =10;
float h = 10;
float spacing = 10;
float randomValue = 10;

void setup() {
  size(400, 400);
  background(255);
  rectMode(CORNER);
  //frameRate(rate);
  noStroke();
}

void draw() {
  grid();
}



void grid() {
  fill(255);
  rect(0, 0, width, height);

  for (int i = 0; i<width; i+=spacing) {
    for (int j = 0; j<height; j+=spacing) {
      fill(random(255)); 
      rect(x+i, y+j, w, h);
    }
  }
}
void mouseClicked() {

  w = random(randomValue);
  h = random(randomValue);
  spacing = random(randomValue);
  println("clicked");
  println("w:"+w+" h:"+h+" spacing:"+spacing);
}