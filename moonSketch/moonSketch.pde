int orbitWidth =300;
int orbitHeight = 200;
float moonX ; 
float moonY ;
float moonAngle = 0;
void setup(){
  size(500, 500);
  
}

void draw(){
  ellipseMode(CENTER);
  background(255);
  drawOrbit();
   drawMoon();
   
   
   if(moonAngle > 360){
     moonAngle = 0;
   }else{
     moonAngle++;
   }
   
}

void drawOrbit(){
  ellipseMode(CENTER);
  float moonAngleRadians = 2 * PI * moonAngle / 360;
  moonX = orbitWidth * cos(moonAngleRadians) ;
  moonY = orbitHeight * sin(moonAngleRadians)+200;
  ellipse(250, 250, orbitWidth, orbitHeight);
}

void drawMoon(){
  if(moonX<100.00){
    moonX += 100;
  }else if(moonX > 300){
    moonX -= 100;
  }
  println("moonX= " +moonX+" moonY= "+moonY);
  ellipseMode(CENTER);
  ellipse((moonX), (moonY), 50, 50);
}