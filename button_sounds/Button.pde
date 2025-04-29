 class Button {
////// variables 
int sX;
int sY;

int sC;
 Button (int x, int y, color c){
 sX = x ;
 sY= y ;
 sC = c;
 }
 void render () {
   fill (sC);
   square(sX, sY, 50);
   //isInButton (sX,sY, 50);
 }
 
 //void bPressed1 () {
 //   if (isInButton (sx, y, s) == true){
 //     println ("bPressed");
    
 //   }
 //}
 


 boolean isInButton(int x, int y, int s){
  rectMode (CENTER);
  int top = y - s/2;
  int bottom =y + s/2;
  int left = x - s/2;
  int right = x + s/2;
   if ( isBetween ( mouseX, left,right) && 
   isBetween (mouseY, top, bottom)) {
     println ("pressed");
     return true ;
  
  }
  else { 
    return false;
  }
}

boolean isBetween  (int aNumber, int min,int max){
  if (aNumber > min && aNumber < max){
    return true;
  }
  else {
    return false;
  }
}

 } 
