void setup(){
  size(800, 800);
  strokeWeight(10);
 for(int i = 0; i <800; i++){
   println("("+chi(i)+", "+chi(i)+")");
  point(chi(i),chi(i));
 }
}

int modulusOfTen(int a){
   return  a%10;
}

int divideByTen(int b){
  return b/10;
}

int diagonalLine(int a) { 
   int b = modulusOfTen(a);
   if(b  < 5 ) {
      return a - b;
   }
   else {
      return a - b + 10;
   }  
} 