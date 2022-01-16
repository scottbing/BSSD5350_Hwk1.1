import processing.pdf.*;

HelperFunctions hf = new HelperFunctions();

//Lesson 1.1
//Code taken from Daniel Shiffman's video below and modified with comments
// https://www.voutube.com/watch?v=o8dffr286os&list=PL6Uak5uKONDGXWAL99560YA D78 fM&index=9

//setup is run one time when the program first starts
void setup() {
   size(640, 360); //set the size of the screen.
   //Screen size must be set before the program is run!
   noLoop();  //only calls draw() once
}

//draw is called repeatedly and automatically for the life of the program after setup is called void draw() {
void draw() {
   background(50); //background color will be rgb(50,50,50)
   //try setting background to:
   //background(255,0,0);
   ColorPalette randomC = new ColorPalette(); //random color
   background(randomC.baseColor);
   fill(0,0,255); //color to fill in whatever closed shape is drawn rgb(150, 150, 150)
   stroke(0,255,0); //color to make the lines or outline of shape to be drawn. rgb(255,255,255)
   //rectMode(CENTER); //Determines how numbers in rect() are interpreted.
   // see documentation: https://processino.oro/reference/rectMode .html
   int w = 100; //width of rect
   int h = 50; //height of rect
   rectMode(CORNER);
   rect(0, 0, w, h);
   stroke(255,0,0); //color to make the lines or outline of shape to be drawn. rgb(255,255,255)
   rect(width - w, height - h, w, h);
   hf.save("img");
   //rect(320, 180, w, h); //draws a rectangle centered on coordinate (320,180) of size 100x50    //more often I will be deleting rectMode. When absent the default is CORNER
   //more often I will be deleting rectMode. When absent the default is CORNER
   // which reads the first two coordinates as the upper left corner of the rect.

   //Now try changing the rectangle fill to blue and the stroke to green
   //Next draw a rectangle in the upper right corner of the screen,
   // change the stroke to red and draw a second rect in the lower left.
}
