void setup(){
  size(256, 256);
  background(#F8D49C);
}

void draw(){
  
  
}

void mousePressed(){
  ellipseMode(CENTER);
  fill(mouseX, mouseY, 0);
  ellipse(mouseX, mouseY, mouseY, mouseY);
  
}