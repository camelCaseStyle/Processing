final int rightEdgeOfScreen = 483;
int rowComplete = 0;

int diameter = 50; 
void nicerCircles(int num){
  // Original position of circle
  int circleX = 37; 
  int circleY = 33;

  strokeWeight(7);
  ellipseMode(CENTER);
  
  for(int j = 0; j <num; j++){
    
    for(int i = 0; i < 50; i++){
        ellipse(circleX, circleY, diameter, diameter);
        diameter -= 1;
        stroke(150-i*3);
    }
    diameter = 50;
    circleX += 60;
  }
}