void setup(){
    println(smaller (5,5));
    testCases(1000);
}
int smaller(int a, int b){
   return (a<b)?a:b;
}

int smallest(int a, int b, int c){
  int smallerOfTwo = (a<b)?a:b;
  return (smallerOfTwo<c)?smallerOfTwo:c;
}

void testCases(int numTestCases){
    //Test case for same numbers 
   println(smallest(1,1,1));
   println(smallest(-1, -1, -1));
   println(smallest(0, 0, 0));
  for(;numTestCases > 0; numTestCases--){
     
     int num1 = (int)random(-1, 1000);
     int num2 = (int)random(1000);
     int num3 = (int)random(1000);
     println("Testing: ( "+num1+", "+num2+", "+num3+ ")");
     println("Smallest: "+smallest(num1, num2, num3)); 
  }
}