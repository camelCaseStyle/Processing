/*
xPosDoor, yPosDoor handle door cordinates 
*/

float xPosDoor = 0;
float yPosDoor = 348/2.5;


void drawDoor(){
    noFill();
    stroke(1);
    rectMode(CORNER);
    strokeWeight(2);
    rect(xPosDoor, yPosDoor, figWidth*1.5, figHeight*3);
}