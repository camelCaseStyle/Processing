int xPos = 600;
int yPos = 450;
int busWidth = 100;
int busHeight = 50;
int wheelWidth = 10;


void setup(){
  size(500, 500);
   background(255);
   createRainbow();
}

void draw(){
  background(255);
  createRainbow();
  drawBus();
  
 
}


void drawBus(){
  fill(0);
  rectMode(CENTER);
  // Bus body 
  rect(xPos, yPos,busWidth, busHeight); 

  xPos = (xPos < -100)?600:xPos-1;
  // Bus wheels 
  ellipseMode(CENTER);
  ellipse(xPos - 25, yPos + 28, wheelWidth, wheelWidth);
  ellipse(xPos + 25, yPos + 28, wheelWidth, wheelWidth);
}

void mousePressed(){
   println(mouseX, mouseY); 
}