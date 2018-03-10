void setup(){
  size(600, 600);  
}

void draw(){
  drawRect();
}

void drawRect(){
  fill(255);
  strokeWeight(2);
  rect(0, 0, 600, 600); // big square
  fill(0);
  rect(0,0,300,300); // top left 
  noFill();
  rect(300,0,300,300); // top right 
  noFill();
  rect(0, 300,300, 300); // bottom left 
  fill(120);
  rect(300,300,300, 300); // bottom right
}