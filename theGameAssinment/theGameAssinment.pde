boolean isInTheHouse = false;
boolean doorIsClosed = true;
int doorCounter = 0;

void setup(){
 size(512, 348); 
 doorCounter = (int)random(180, 480);
 
}
void draw(){
  
  background(#9EABAE);
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
    println("xpos= " +xPos);
  }
}

void enterDoorAndReset(){
  xPos += 50;
  xPos = startingPosX;
  doorIsClosed = true;
  
}
void mousePressed(){
  println("xPos = "+ mouseX +" ,mouseY = " +mouseY);  
}