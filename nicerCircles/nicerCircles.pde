int xPos = 200;
int yPos = 200; 

void setup(){
  size(400, 400);  
  
}


void draw(){
  nicerCircles();
  
  
}

void nicerCircles(){
  background(0);
  int diameter = 100; 
  stroke(125);
  strokeWeight(2);
  ellipseMode(CENTER);
  for(int i = 0; i < 100; i++){
      ellipse(xPos, yPos, diameter, diameter);
      diameter -= 1;
      stroke(125-i);
  }

}