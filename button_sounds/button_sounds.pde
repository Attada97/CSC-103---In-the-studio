import processing.sound.*;
int state;
////////buttons
Button button1;
Button button2;
Button button3;
Button button4;
Button button5;
Button button6;
Button button7;
Button button8;
Button button9;
Button button10;
Button button11;
Button button12;
Button button13;

// declares sound variable
SoundFile strings;
SoundFile strings2;
SoundFile strings3;
SoundFile strings4;
//////////////////
///////////////
SoundFile drums;
SoundFile drum2;
SoundFile drum3;
SoundFile drum4;
SoundFile hats;
/////////////////
SoundFile effects1;
SoundFile effects2;
/////////////////
SoundFile pophit;
SoundFile fire;
SoundFile goodjob;
SoundFile awsome;
SoundFile woah;
/////////////////
float stringsVol = 0;
float stringsVol2 = 0;
float stringsVol3 = 0;
float stringsVol4 = 0;
////////////////////
float drumVol = 0;
float drumVol2 = 0;
float drumVol3 = 0;
float drumVol4 = 0;
float hatsVol = 0;
float rateI;
int rateD;
float decimal;
///////////////////
float effectsVol1 = 0;
float effectsVol2 = 0;
Animation studioAnimation;
PImage [] studio = new PImage [2];
///////////////////////////////
void setup (){
   background(42);
  
  size (800,600);
  strings = new SoundFile (this, "Strings 1.mp3");
  strings2 = new SoundFile (this, "strings2.mp3");
   strings3 = new SoundFile (this, "strings3.mp3");
   strings4 = new SoundFile (this, "strings4.mp3");
   drums = new SoundFile (this, "Drum 1.mp3");
    drum2 = new SoundFile (this, "drum2.mp3");
     drum3 = new SoundFile (this, "drum3.mp3");
      drum4 = new SoundFile (this, "drum4.mp3");
    hats = new SoundFile (this, "Hats 1.mp3");
     effects1 = new SoundFile (this, "effects1.mp3");
     effects2 = new SoundFile (this, "effects2.mp3");
       pophit = new SoundFile (this, "pophit.mp3");
        awsome = new SoundFile (this, "awsome.mp3");
         goodjob = new SoundFile (this, "goodjob.mp3");
          woah = new SoundFile (this, "woah.mp3");
           fire = new SoundFile (this, "fire.mp3");
  ///play strings
 // strings.play();
   button1 = new Button (250, 230, color (255,0,0));
      button2 = new Button (350, 230, color (#54B4A3));
        button3 = new Button (450, 230, color (#9166B4));
          button4 = new Button (550, 230, color (#B8C976));
          
          
            button5 = new Button (250, 230, color (#4A897D));
              button6 = new Button (350, 230, color (#B8BF5A));
                button7 = new Button (450, 230, color (#B8BF5A));
                  button8 = new Button (550, 230, color (#B8BF5A));
                    button9 = new Button (550, 150, color (#B8BF5A));
                    
                      button10 = new Button (350, 230, color (#B8BF5A));
                        button11 = new Button (450, 230, color (#B8BF5A));
                        
                         button12 = new Button (350, 230, color (#B8BF5A));
                          button13 = new Button (450, 230, color (#B8BF5A));
              
              
              /////////////////////////////////////////////
              imageMode(CENTER);
              noSmooth();
               for(int index = 0; index<studio.length; index++){
    studio[index] = loadImage("studio/" + "studio" + index + ".png");
  }
  
   studioAnimation = new Animation(studio, .05, 20);
  
  ////////////////////////////////////////////////////  
   effects1.play();
         effects1.amp(0);
         
         effects2.play();
         effects2.amp(0);
  
  drums.play();
         drums.amp(0);
         
          drum2.play();
         drum2.amp(0);
         
          drum3.play();
         drum3.amp(0);
         
          
          drum4.play();
         drum4.amp(0);
         
         pophit.play();
         

strings.play();
strings.amp (0);
hats.play();
hats.amp(0);

strings2.play();
strings2.amp(0);

strings3.play();
strings3.amp(0);

state = 0;
rateI = 1.0;

}

void draw(){
  rectMode (CENTER);
 ////// main screen music
 if (state == 0){
    strings.amp(0);
     strings2.amp(0);
      strings3.amp(0);
      drums.amp(0);
       drum2.amp(0);
        drum3.amp(0);
        drum4.amp(0);
        hats.amp(0);
        effects1.amp(0);
         effects2.amp(0);
  }
  
  if (state == 0){
    pophit.amp(1);
  }
  else{
    pophit.amp(0);
  }
  //////////////
   if (effects1.isPlaying () == false){
  effects1.play();
  effects1.amp(effectsVol1);
    //////// render buttons

}
  //////////////////
   if (effects2.isPlaying () == false){
  effects2.play();
  effects2.amp(effectsVol2);
    //////// render buttons

}
  
 ////////////////////////////////
  if (strings.isPlaying () == false){
  strings.play();
  strings.amp(stringsVol);
    //////// render buttons

}
  if (drums.isPlaying () == false){
  drums.play();
  drums.amp (drumVol);
    //////// render buttons

}
////////////////////
 if (drum2.isPlaying () == false){
  drum2.play();
  drum2.amp (drumVol2);
    //////// render buttons

}
//////////////////////////
if (drum3.isPlaying () == false){
  drum3.play();
  drum3.amp (drumVol3);
    //////// render buttons

}
if (drum4.isPlaying () == false){
  drum4.play();
  drum4.amp (drumVol4);
}
    //////// render buttons

if (hats.isPlaying () == false){
  hats.play();
  hats.amp (hatsVol);
    //////// render buttons

}
/////////////////////////////////////
if (strings4.isPlaying () == false){
  strings4.play();
  strings4.amp(stringsVol4);
    //////// render buttons

}
 if (strings2.isPlaying () == false){
  strings2.play();
  strings2.amp(stringsVol2);
    //////// render buttons

}
if (strings3.isPlaying () == false){
  strings3.play();
  strings3.amp(stringsVol3);
    //////// render buttons

}

 
///////////////////////////case break
switch (state){
  
  case 0:
  
  drawHomeScreen();
  
  
  break;
  
  case 1:
  //myAnimation.display(width/2, height/2);
  drawStringScreen ();
   
  break;
  
  case 2:
  drawDrumScreen ();
  
  break;
  
  case 3:
   drawEffectsScreen();
  break;
  case 4:
    drawFinalScreen ();
  break;


  

}
if (key== 'm' && keyPressed == true ){
 
  woah.play();
   woah.amp(.2);
   state=1;
 }
  if (key== 'd' && keyPressed == true ){
   
    fire.play();
      fire.amp(.2);
   state= 2;
 }
  if (key== 'e' && keyPressed == true ){
    goodjob.amp (.2);
    goodjob.play ();
   state= 3;
 }
  if (key== 'f' && keyPressed == true ){
    awsome.amp(.2);
    awsome.play();
   state= 4;
 }
 if (key== 'r' && keyPressed == true ){
   state= 0;
 }

}
void drawButtons1(){
     
     textSize (20);
     text ( "Remove strings" , 100, 50);
//button2.render();
textSize (20);
     text ( "Add strings" , 100, 120);
//button3.render();
textSize (20);
     text ( "Add Drums" , 100,   190);
//button4.render();
textSize (20);
     text ( "Remove Drums" , 100,   260);
button5.render();
textSize (20);
     text ( "Add Hats" , 100,   330);
button6.render();
textSize (20);
     text ( "Remove Hats" , 100,   400);
button1.isInButton(50, 50, 50);
}
//////////////////////////////////// start page
void drawHomeScreen(){
  studioAnimation.isAnimating = true;
  background(42);
  
   studioAnimation.display(width/2, height/2);
   fill (42);
  textSize (20);
  text ("Press 'm' to make your beat!!", width/2-120, height/2-50);
// background (255,0,0);
// text ("background", width/2, height/2);
}
////////////////////////////////////////first sound
 void drawStringScreen () {
    studioAnimation.isAnimating = true;
  background(42);
  studioAnimation.display(width/2, height/2);
    textSize (30);
     text ( "Add Melodie!!" , width/2-80, height/2-140);
     textSize (20);
      text ( "Click buttons to add and remove sounds" , width/2-160, height/2);
      text (" Press 'd' to move on to drums", 400, 500);
   button1.render();
   button2.render();
   button3.render();
   button4.render();
   
 }
 void drawEffectsScreen(){
     studioAnimation.isAnimating = true;
  background(42);
  studioAnimation.display(width/2, height/2);
    textSize (30);
     text ( "Add Effects!!" , width/2-80, height/2-140);
     textSize (20);
      text ( "Click buttons to add and remove sounds" , width/2-160, height/2);
      text (" Press 'f' to finish", 400, 500);
        text (" Press 'm' to go back to melodies)", 400, 530);
          text (" Press 'd' to go back to drums)", 400, 560);
      
      button10.render();
   button11.render();
 }
 
 //////////////////////////////
 void drawDrumScreen (){
   studioAnimation.isAnimating = true;
  background(42);
  studioAnimation.display(width/2, height/2);
    textSize (30);
     text ( "Add Drums!!" , width/2-80, height/2-140);
     textSize (20);
      text ( "Click buttons to add and remove sounds" , width/2-160, height/2);
      text (" Press 'e' to move on to effects", 400, 500);
      text (" Press 'm' to go back to melodies", 400, 530);
   button5.render();
   button6.render();
   button7.render();
   button8.render();
   button9.render();
   
 }
 ////////////////////////
 void drawFinalScreen () {
     studioAnimation.isAnimating = true;
  background(42);
  studioAnimation.display(width/2, height/2);
  fill(#82D3DB);
    textSize (30);
     text ( "You did it!!" , width/2-80, height/2-140);
     text ( "- Increase/D your tempo +", width/2-160, height/2-110);
     textSize (20);
      text ( "Use keys below to go back to any part" , width/2-160, height/2);
      text (" Press 'r' to start over", 400, 500);
       text (" Press 'e' to go back to effects)", 400, 530);
        text (" Press 'm' to go back to melodies)", 400, 560);
          text (" Press 'd' to go back to drums)", 400, 590);
   
   button12.render();
    button13.render();
   
   
 }
 //////////////////////////
 void setAllRates(float rate) {
  strings.rate(rate);
  strings2.rate(rate);
  strings3.rate(rate);
  strings4.rate(rate);
  drums.rate(rate);
  drum2.rate(rate);
  drum3.rate(rate);
  drum4.rate(rate);
  hats.rate(rate);
  effects1.rate(rate);
  effects2.rate(rate);
  pophit.rate(rate);
}
/////////////////////////

void mousePressed (){
  /////////////////////////////
  if(state == 1){
 if (button1.isInButton(250, 230, 50)){
     if (stringsVol == 0){
       stringsVol = 1;
     } else {
       stringsVol = 0;
     }
     //strings.amp (0);
     strings.amp(stringsVol);
     }
     //////////////////////
    if (button2.isInButton(350, 230, 50)){
     if (stringsVol2 == 0){
       stringsVol2 = 1;
     } else {
       stringsVol2 = 0;
     }
     //strings.amp (0);
     strings2.amp(stringsVol2);
     }
     /////////////////////
     if (button3.isInButton(450, 230, 50)){
     if (stringsVol3 == 0){
       stringsVol3 = 1;
     } else {
       stringsVol3 = 0;
     }
     //strings.amp (0);
     strings3.amp(stringsVol3);
     }
     ///////////////////////
       if (button4.isInButton(550, 230, 50)){
     if (stringsVol4 == 0){
       stringsVol4 = 1;
     } else {
       stringsVol4 = 0;
     }
     //strings.amp (0);
     strings4.amp(stringsVol4);
     }
  }
/////////////// / / /  ///////////////////////
if (state == 2){
      if (button5.isInButton(250, 230, 50)){
     if (drumVol == 0){
       drumVol = 1;
     } else {
       drumVol = 0;
     }
     //strings.amp (0);
     drums.amp(drumVol);
     }
     //////////////////////////
             if (button6.isInButton(350, 230, 50)){
     if (drumVol2 == 0){
       drumVol2 = 1;
     } else {
       drumVol2 = 0;
     }
     //strings.amp (0);
     drum2.amp(drumVol2);
     }
     ///////////////////////////////
             if (button7.isInButton(450, 230, 50)){
     if (drumVol3 == 0){
       drumVol3 = 1;
     } else {
       drumVol3 = 0;
     }
     //strings.amp (0);
     drum3.amp(drumVol3);
     }
     ////////////////////////////////
             if (button8.isInButton(550, 230, 50)){
     if (drumVol4 == 0){
       drumVol4 = 1;
     } else {
       drumVol4 = 0;
     }
     //strings.amp (0);
     drum4.amp(drumVol4);
     }
     ///////////////////////////
          if (button9.isInButton(550, 150, 50)){
     if (hatsVol == 0){
       hatsVol = 1;
     } else {
       hatsVol = 0;
     }
     //strings.amp (0);
     hats.amp(hatsVol);
     }
}
if (state == 3) {
     //////////////////////
       if (button10.isInButton(350, 230, 50)){
     if (effectsVol1 == 0){
       effectsVol1 = 1;
     } else {
       effectsVol1 = 0;
     }
     //strings.amp (0);
     effects1.amp(effectsVol1);
     }
     ///////////////////////////
      if (button11.isInButton(450, 230, 50)){
     if (effectsVol2 == 0){
       effectsVol2 = 1;
     } else {
       effectsVol2 = 0;
     }
     //strings.amp (0);
     effects2.amp(effectsVol2);
     }
     /////////////////////////////////////////
}
if (state ==4) {
  if (button12.isInButton(350, 230, 50)){
     rateI -= 0.1;   // Decrease by 0.1 every click
   if (rateI < 0.5) {
     rateI = 0.5;  // Limit to half speed
   }
   setAllRates(rateI);
  
  
}
 if (button13.isInButton(450, 230, 50)){
     // Button 13 -> Decrease speed
   rateI += 0.1;    // Increase by 0.1 every click
   if (rateI > 2.0) {
     rateI = 2.0;   // Limit to 2x speed
   }
   setAllRates(rateI);
  
}
}
}

  
