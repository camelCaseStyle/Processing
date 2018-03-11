


void setup(){
  size(600, 600); 
 
}

void draw(){
  background(255);
  stroke(0);
  ellipseMode(CENTER);  
  rectMode(CENTER);
  stroke(0);
  fill(127);
  rect(mouseX, mouseY, 50, 200); // middle bit 
  fill(255);
  ellipse(mouseX, mouseY-100, 100, 100); // face 
  fill(0);
  ellipse(mouseX-30, mouseY-100, 20, 50); // left eye 
  ellipse(mouseX+30, mouseY-100, 20, 50); // right eye 

  line(mouseX-25, mouseY+100, mouseX-35, mouseY+115); // left leg 
  line(mouseX+25, mouseY+100, mouseX+35, mouseY+115); // right leg
}