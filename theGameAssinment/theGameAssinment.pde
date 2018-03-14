void setup(){
 size(512, 348); 
 
}
void draw(){
  background(255);
  drawWg();
}

void drawWg(){
  float xPos = 50;
  float yPos = 174;
  ellipseMode(CENTER);
  fill(0);
  ellipse(xPos, yPos, 50, 50); // face 
  fill(255);
  noStroke();
  triangle( xPos, yPos, 59, 197, 99,186.5); // mouth
  fill(0);
  triangle(50, 199, 25, 270, 75, 270); //main Body
  fill(0);
  stroke(0);
  strokeWeight(2);
  line(25, 270, 25, 290);
  line(75, 270, 75, 290);
  
  
}