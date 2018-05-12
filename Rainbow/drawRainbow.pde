int screenHeight = 500;
int screenWidth = 500;
int diameter = 1010;

int[] rainbowColors = {255, #9400D3  ,#4B0082 ,#0000FF,#00FF00 ,#FFFF00,#FF7F00,#FF0000};


void createRainbow(){
  ellipseMode(CENTER);
  strokeWeight(0);
  for(int i = 7; i >= 0; i--){
    ellipse(screenWidth ,screenHeight,  diameter, diameter);
    fill(rainbowColors[i]);
    ellipse(screenWidth ,screenHeight,  diameter, diameter);
    diameter -= 60;
  }
  diameter = 1010;
}  