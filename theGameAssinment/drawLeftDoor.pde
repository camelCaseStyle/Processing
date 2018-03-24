void drawLeftDoor(){
  stroke(0);
  strokeWeight(12);
  line(471, 139, 396, 174);
  line(471, 139, 511, 173);
  strokeWeight(2);
  line(413, 171, 413, 265);
  line(420, 169, 460, 169);
  line(420, 169, 420, 265);
  line(460, 169, 460, 265);
  
    fill(0);
  if(!doorIsClosed){
    line(465, 173, 487, 166);
    line(466, 265, 488, 271);
    line(488, 170, 488, 271);
    //Window
    quad(468, 226, 477, 224, 478, 230, 468,232);
    ellipse(483, 240, 5, 5);
  }else{
    noStroke();
    ellipse(426, 242, 5, 5);
    rectMode(CENTER);
    rect(440, 229, 10, 10);
  }

  
}