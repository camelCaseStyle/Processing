boolean isInTheHouse = false;
boolean doorIsClosed = true;
int doorCounter = 0;
int countOfSeconds = 0;

void setup(){
 size(512, 348); 
 doorCounter = (int)random(180, 480);
 
}
void draw(){
  background(#9EABAE);
  detectCollision();
  drawGW();
  drawDoor();
  drawLinesOnFloor();
  drawTrees();
  drawLeftDoor();
  doorCounter -= 1;
  if(doorCounter< 0){
    if(!doorIsClosed){
      doorIsClosed = true;
    }else{
     doorIsClosed = false; 
    }
    
    doorCounter = (int)random(180, 480);
  }
  hammer();
  countOfSeconds ++;
  if(countOfSeconds == 60){
    countOfSeconds = 0;
    moveHammerDown();
    
  }
  
}

void keyPressed(){
  float rightEdge = 400;
  float leftEdge = 100;
  if(key == CODED){
    switch(keyCode){
      case LEFT: 
        if(xPos - 20 < leftEdge){
          break;
        }
        xPos -= 20;
        break;
      case RIGHT:
        if(xPos == rightEdge){
          if(doorIsClosed){
            break;
          }else{
            enterDoorAndReset();
          }
        }else if(xPos < rightEdge){
          xPos += 20;
        }
        
        break;
      default:
        break;
    }
  }
}

void enterDoorAndReset(){
  xPos += 50;
  xPos = startingPosX;
  doorIsClosed = true;
  
}

void detectCollision(){
  println("distance = "+dist(xPos, yPos, xPosHammer, yPosHammer));
  if ((int)dist(xPos, yPos, xPosHammer, yPosHammer) < 15){
    enterDoorAndReset();
    resetHammer();
  }
}

void mousePressed(){
  println("xPos = "+ mouseX +" ,mouseY = " +mouseY);  
}