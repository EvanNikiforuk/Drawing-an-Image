//Globl Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean widthLarger=false, heightLarger=false;
PImage pic;
Boolean nightMode=false;
//
size(800, 600); //Landscape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//
//Aspect Ratio of Background Image
//e1347a4e302f8b4fa252481a828d277b.jpg
int picWidth = 400;
int picHeight = 400;
//Image Orientation: Landscape, Square, Portrait
if ( picWidth >= picHeight ) {//True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
//
//Aspect Ratio Calcuations
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
//Population
pic = loadImage("../Images Used/e1347a4e302f8b4fa252481a828d277b.jpg");
backgroundImageX = appWidth * 0;
backgroundImageY = appHeight * 0;
backgroundImageWidth = appWidth - 1;
backgroundImageHeight = appHeight - 1;
//
// Adjust Iamge Variables for Aspect Ratio
float picWidthAdjusted, picHeightAdjusted;
picWidthAdjusted = backgroundImageWidth * imageWidthRatio;
picHeightAdjusted = backgroundImageHeight * imageHeightRatio;
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode == false) tint(255, 64); //Gray Scale, Day use: use 1/2 int value for white (i.e. 128/255=1/2)
if ( nightMode == true) tint(64, 64, 45); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted );
