//Globl Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
//
size(800, 600); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth * 0;
backgroundImageY = appHeight * 0;
backgroundImageWidth = appWidth - 1;
backgroundImageHeight = appHeight - 1;
//
//Rectangular Layout and Image Drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
