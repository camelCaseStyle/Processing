int xPos = 150;
int yPos = 150;
int widthFig = 50; 
int heightFig = 50;

int windowX = 600;
int windowY = 600;

void setup(){
  size(600, 600);
}

void draw(){
  
  //Squares 
  rectMode(CENTER);
  fill(#00FFFF);
  rect(windowX/2, windowY/2, 2*xPos, 2*yPos); // outer sqaure
  rect(windowX/2, windowY/2, xPos, yPos); // inner square
  fill(127); 
  
  // Small squares
  rect((windowX-xPos)/2, windowY/2, widthFig/2, heightFig/2);
  rect((windowX+xPos)/2, windowY/2, widthFig/2, heightFig/2);
  rect(windowX/2, (windowY-yPos)/2, widthFig/2, heightFig/2);
  rect(windowX/2, (windowY+yPos)/2, widthFig/2, heightFig/2); 
  
  // Lines 
  line(xPos, yPos, windowX-xPos, windowY-yPos); // from top left to bottom right 
  line(windowX-xPos, yPos, xPos, windowY-yPos); // from top right to bottom left
  
  // Circles 
  ellipse(windowX-xPos, yPos, widthFig, heightFig); // top right 
  ellipse(xPos, windowY-yPos, widthFig, heightFig); // bottom left
  ellipse(windowX-xPos, windowY-yPos, widthFig, heightFig); // bottom right
  ellipse(xPos, yPos, widthFig, heightFig); // top left 
}