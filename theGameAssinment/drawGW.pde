
void drawWg(){
  ellipseMode(CENTER);
  fill(0);
  
  // face of MrGw
  ellipse(xPos, yPos, figWidth, figHeight); 
  
  // body of Mr Gw
  triangle(xPos, yPos+figHeight/2, xPos-30, yPos+figHeight*2, xPos-30, (yPos+figHeight-10));  
  
  // Mouth of GW
  fill(255);
  noStroke();
  ellipse(xPos+figWidth/4, yPos+figWidth/2, figWidth/4, figHeight);
}