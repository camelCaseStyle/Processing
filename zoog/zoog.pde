void setup(){
  size(600, 600); 
}

void draw(){
  stroke(0);
  ellipseMode(CENTER);  
  rectMode(CENTER);
  stroke(0);
  fill(127);
  rect(300, 300, 50, 200);
  fill(255);
  ellipse(300, 200, 100, 100);
  fill(0);
  ellipse(270, 200, 20, 50);
  ellipse(330, 200, 20, 50);

  line(275, 400, 265, 415);
  line(325, 400, 335, 415);
}