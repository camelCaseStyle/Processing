int screenHeight = 500;
int screenWidth = 500;
int diameter = 780;

int[] rainbowColors = {0, #9400D3  ,#4B0082 ,#0000FF,#00FF00 ,#FFFF00,#FF7F00,#FF0000};


void createRainbow(){
  ellipseMode(CENTER);
  //for(int i = 7; i > 0; i--){
    fill(rainbowColors[1]);
    ellipse(screenWidth ,screenHeight,  diameter, diameter);
    if(diameter > 0)diameter -= 20;
  
    fill(rainbowColors[2]);
    ellipse(screenWidth ,screenHeight,  diameter, diameter);
    //diameter += 180;
//  }
}  