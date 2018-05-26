final int rightEdgeOfScreen = 483;
final int maxNumOfCircles = 40;
int rowComplete = 0;

int diameter = 50; 
void nicerCircles(){
  // Original position of circle
  int circleX = 37; 
  int circleY = 33;

  strokeWeight(7);
  ellipseMode(CENTER);
    // Now decide number of circles to draw using circleY and circleX; 
    for(int j = 0; j < circlesDrawnGray + circlesDrawnRed; j++){
      // Now draw  one circle 
        for (int i = 0; i < 50; i++){
          if(j < circlesDrawnRed){
            strokeWeight(2);
            stroke(255-i*2,69-i,0);
          }else{
            stroke(150-i*3);
          }
          ellipse(circleX, circleY, diameter, diameter);
          diameter -= 1;
          
          
        }
        //Move the next circle to the left and reset the diameter 
        diameter = 50;
        circleX += 60;
        if(circleX > rightEdgeOfScreen){
          //reset circleX and move to next row
          circleX = 37;
          circleY += 60;
        }
        if(circlesDrawnGray + circlesDrawnRed > maxNumOfCircles ){
          resetCircles();
        }
    }  
}

void resetCircles(){
  circlesDrawnGray = 0;
  circlesDrawnRed = 0;
  nicerCircles();
}