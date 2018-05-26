boolean isInTheHouse = false;
boolean doorIsClosed = true;
int doorCounter = 0;
int countOfSeconds = 0;
int score = 0;
int circlesDrawn = 0;


/*
**Scoring Keys 
*/
final int tool = 0;
final int playerGotHome = 1;
final int rowFull = 3;




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
  if(countOfSeconds == 30){
    countOfSeconds = 0;
    moveHammerDown();
    
  }
  
  nicerCircles(circlesDrawn);

  
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
        xPos -= 50;
        break;
      case RIGHT:
        if(xPos == rightEdge){
          if(doorIsClosed){
            break;
          }else{
            //player can enter home 
            enterDoorAndReset();
          }
        }else if(xPos < rightEdge){
          xPos += 50;
        }
        
        break;
      default:
        break;
    }
  }
}
void scoreField(int action){
  switch(action){
    case tool:
      circlesDrawn = 8;;
      nicerCircles(1);
      nicerCircles(circlesDrawn);
      break;
    case playerGotHome:
      //circlesDrawn += 3; 
      nicerCircles(circlesDrawn);
      break;
      
    case rowFull:
      break;
  }
  
  
}

void enterDoorAndReset(){
  scoreField(playerGotHome);
  xPos += 30;
  xPos = startingPosX;
  doorIsClosed = true;
  
}

void detectCollision(){
  if ((int)dist(xPos, yPos, xPosHammer, yPosHammer) < 15){
    enterDoorAndReset();
    resetHammer();
    score = 0;
  }
}

void mousePressed(){
  println("xPos = "+ mouseX +" ,mouseY = " +mouseY);  
}