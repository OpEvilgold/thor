
float movementX;
float movementY;
PImage backgroundFill;
PImage lavaDemonTexture;
class Thor
{
  PShape shape;
  //constructor
  Thor(PVector position)
  {
     
  }
   
}

Thor player;
PShape lavaDemon;
void setup()
{
  player = new Thor(new PVector(movementX, width * 0.4f));
  fullScreen(P2D);
  lavaDemon = loadShape("LavaDemon.obj");
  lavaDemonTexture = loadImage("lavaTexture.jpg");
  lavaDemon.setTexture(lavaDemonTexture);
  lavaDemon.scale(40);
  //mutant.rotateX(radians(180));
  lavaDemon.rotateZ(radians(180));
  
 // mutant.rotateX(radians(90));
  backgroundFill = loadImage("VolcanicBackground.jpg");
  backgroundFill.resize(width, height);
  
}

void draw()
{
  
  background(backgroundFill); 
  shape(lavaDemon, width/2, height/2);
  lights();
  
}
