/*
xPosDoor, yPosDoor handle door cordinates 
*/


float xPosDoor = 30;
float yPosDoor = 348/1.7;
float figWidth = 40;
float figHeight = 40;
void drawDoor(){

    noFill();
    stroke(1);
    rectMode(CENTER);
    strokeWeight(2);
    rect(xPosDoor, yPosDoor, figWidth*1.5, figHeight*3);
    fill(0);
    rect(xPosDoor, yPosDoor-30, figWidth/2, figHeight/2);
    ellipseMode(CENTER);
    ellipse(xPosDoor+20, yPosDoor, 10, 15);
    noStroke();
    fill(#9F6D23);
    rect(xPosDoor, yPosDoor-(figWidth*1.5)-62, figWidth*1.6, figHeight*3);
    fill(#9EABAE);
    rectMode(CORNER);
    rect(13, 47, 50, 20);
    rect(13, 92, 50, 20);
    fill(#CCA6A3);
    rect(13, 36, 50, 5);
    rect(13, 82, 50, 6);
    rect(13, 132, 50, 7);

    
    
}


void drawLinesOnFloor(){
    stroke(#B29492);
    strokeWeight(4);
    line(62, 280, 119, 273);
    line(163, 274, 193, 284);
    line(220, 285, 247, 276);
    line(267, 288, 278, 292);
    line(297, 291, 329, 291);
    line(366, 296, 419, 302);
    line(397, 312, 403, 307);
    stroke(#9B7D83);
    line(64, 291, 120, 288);
    line(165, 293, 209, 294);
    line(229, 295, 253, 291);
    line(296, 281, 322, 281);
    line(365, 283, 413, 286);
    line(365, 305, 373, 313);
}
void drawTrees(){
  noStroke();
  fill(#539423);
  triangle(497, 36, 462, 132, 550, 132);
  triangle(460, 87, 446, 106, 490, 106);
  triangle(462, 82, 448, 97, 479, 97);
  triangle(463, 77, 449, 91, 474, 90);
  triangle(463, 67, 458, 85, 467, 85);
  triangle(432, 137, 388, 140, 411, 76);
  triangle(395, 106, 425, 102, 412, 64);
  triangle(412, 58, 401, 81, 423, 79);
  
}