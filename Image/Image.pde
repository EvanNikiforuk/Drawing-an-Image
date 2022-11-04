//Globl Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
//
size(800, 600); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//Population
pic = loadImage("../Images Used/e1347a4e302f8b4fa252481a828d277b.jpg");
backgroundImageX = appWidth * 0;
backgroundImageY = appHeight * 0;
backgroundImageWidth = appWidth - 1;
backgroundImageHeight = appHeight - 1;
//
//Rectangular Layout and Image Drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
