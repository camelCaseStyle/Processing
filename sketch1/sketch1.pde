void setup(){
  size(480,120);
}

void draw(){
  if(mousePressed){
    fill(0);
  }else{
    fill(mouseX,mouseY, mouseX-mouseY,63);
  }
  ellipse(mouseX, mouseY, 80,80);
}