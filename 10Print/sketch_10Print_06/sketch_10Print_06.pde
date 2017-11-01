/*------------------------------------
10Print
06 - Quinta alterazione: 
linee diagonali alternate + cerchi di raggio random
------------------------------------*/

int x= 0;
int y = 0;
int step = width/5;
float randomValue = 0.5;
float r;


void setup(){
  size(400,400);
  background(255);  
  
  //griglia di background
  float gridSize = width/40;
  for(int i= 0; i<width; i+=gridSize){
      strokeWeight(0.5);
      stroke(240);
      line(0, i, width,i); //linea verticale
      line(i,0,i,height);//linea orizzontale
  }
}
  
void draw(){
  stroke(0);
  strokeWeight(2);
  r = random(randomValue*30); 
  if(y <= height){ //to stop the loop once the max height is reached
    if(random(1)<randomValue){
      line(x,y,x+step,y+step);
      fill(0);
      noStroke();
      ellipse(x+step,y,r,r);
    }else{    
      line(x,y+step,x+step,y);
    }
    x += step;
        
    if(x>width){
      x = 0;
      y += step;
    }
    println("X = "+x+" and Y ="+y + " | r ="+r);
  }
}