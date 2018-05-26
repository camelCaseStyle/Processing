/*
xPos and yPos handle mrGW 
*/

float xPos = 100;
float yPos = 225;
float figWidthGW = 40/2;
float figHeightGW = 40/2;
float startingPosX = 100;


void drawGW(){
  noStroke();
  ellipseMode(CENTER);
  fill(0);
  
  // face of MrGw
  ellipse(xPos, yPos, figWidthGW, figHeightGW); 
  
  // body of Mr Gw
  triangle(xPos, yPos+figHeightGW/2, xPos-30, yPos+figHeightGW*2, xPos-19, (yPos+figHeightGW-10));  

  // Mouth of GW
  fill(#9EABAE);
  ellipse(xPos+figWidthGW/4, yPos+figWidthGW/2, figWidthGW/4, figHeightGW);
}