int xPosHammer = (int) random(86, 365);
int yPosHammer = 30;
int gradient = 10;
int hittingBitGradient = 3;
int BOTTOMOFSCREEN = 273;
void hammer(){
  stroke(0);
  //the hammer rod 
  line(xPosHammer, yPosHammer, xPosHammer + gradient, yPosHammer-gradient);
  // the hammer hitting bit
  strokeWeight(5);
  line(xPosHammer -hittingBitGradient, yPosHammer-hittingBitGradient, xPosHammer+hittingBitGradient, yPosHammer+hittingBitGradient);
}

void moveHammerDown(){
  yPosHammer += 10;
  if(yPosHammer > BOTTOMOFSCREEN){
    resetHammer();
    scoreField(tool);
  }
}
void resetHammer(){
  xPosHammer = (int) random(86, 365);
  yPosHammer = 30;
}