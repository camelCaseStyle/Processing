int leftX = 0;
int rightX = 400;
int topY = 0;
int bottomY = 400;

void setup(){
  size(400, 400);
}

void draw(){
  background(255);
  line(mouseX,topY, mouseX, bottomY);
  line(leftX, mouseY, rightX, mouseY);
  
}