//Array of headlines
String[] headlines = {
  "Welcome!",
  "It is time to brush some teeth!",
  "Move the toothbrush across the dirty teeth, in order to clean them."
};

PFont f;   //Declare PFont variable
float x;  //Horizontal location
int index = 0;


void setup(){
size (500,500);

  //Create Font
  f = createFont( "Arial", 16);

  // Initialize headline offscreen
  x = width;
} 

//background color
void draw(){
  background(255);
  textFont(f, 16);    //Specify font to be used
  fill(0);           //Specify font color
  textAlign (LEFT); //Display headline at x location
    ellipseMode(CENTER);
  
  //Specific String from the array is displayed according to the value of the "index" variable.
  text(headlines[index],x,height-20);
  
  x=x-3; //Decrement x
  
  //If x is less than the negative width, then it is off the screen
  //textWidth() is used to calculate the width of the current String
  float w = textWidth(headlines[index]);
  if (x < -w) {
    x = width;
    //index is incremented when the current String has left the screen in order to display a new String.
    index = (index + 1) % headlines.length;
  }  
fill(127,0,0);            //color of mouth
ellipse(250,250,450,100);//mouth shape and position 
fill(140,140,120);      //color of teeth

//teeth size/shape and position 
rect(238,200,20,55);
rect(262,200,20,55);
rect(217,201,20,52);
rect(283,201,20,50);
rect(196,202,20,51);
rect(304,202,20,50);
rect(175,202,20,50);
rect(325,202,20,50);
rect(239,262,20,40);
rect(261,262,20,40);
rect(217,261,20,38);
rect(283,261,20,37);
rect(195,261,20,38);
rect(305,261,21,37);
rect(173,261,22,36);
rect(327,261,22,36);


//lips
  fill(230,30,40);
  arc(250, 295, 320, 45, 0, PI);
  arc(250, 195, 320, 45, 0, PI);
  rect(360, 278, 70, 20);
  rect(410, 265, 60, 20);
  rect(440, 245, 40, 20);
  rect(410, 225, 65, 20);
  rect(385, 205, 60, 20);
  rect(355, 195, 70, 20);
  
  rect(90, 278, 70, 20);
  rect(40, 265, 60, 20);
  rect(20, 245, 40, 20);
  rect(25, 225, 65, 20);
  rect(55, 205, 60, 20);
  rect(85, 195, 70, 20);


 stroke(200);         //toothbrush edge color
fill(180,200,255);   //body color
ellipse(mouseX,mouseY,250,30);    //handle
ellipse(mouseX-120,mouseY,65,30);//head
//bristles
fill(255,255,255);
rect(mouseX-152,mouseY,5,20);
rect(mouseX-145,mouseY,5,20);
rect(mouseX-138,mouseY,5,20);
rect(mouseX-131,mouseY,5,20);
rect(mouseX-124,mouseY,5,20);
rect(mouseX-117,mouseY,5,20);
rect(mouseX-110,mouseY,5,20);
rect(mouseX-103,mouseY,5,20);

}

 
