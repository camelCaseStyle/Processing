int xLocRect = 300;
int yLocRect = 300;


void setup(){
  size(600, 600); 
}

void draw(){
  stroke(0);
  ellipseMode(CENTER);  
  rectMode(CENTER);
  stroke(0);
  fill(127);
  rect(xLocRect, yLocRect, 50, 200); // middle bit 
  fill(255);
  ellipse(xLocRect, xLocRect-100, 100, 100); // face 
  fill(0);
  ellipse(xLocRect-30, yLocRect-100, 20, 50); // left eye 
  ellipse(xLocRect+30, yLocRect-100, 20, 50); // right eye 

  line(xLocRect-25, yLocRect+400, xLocRect-35, yLocRect); // left leg 
  line(325, 400, 335, 415); // right leg
}