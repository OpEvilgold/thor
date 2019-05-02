
float movementX;
float movementY;
PImage backgroundFill;
PImage mutantTexture;
class Thor
{
  PShape shape;
  //constructor
  Thor(PVector position)
  {
     
  }
   
}

Thor player;
PShape mutant;
void setup()
{
  player = new Thor(new PVector(movementX, width * 0.4f));
  fullScreen(P2D);
  mutant = loadShape("Mutant.obj");
  mutantTexture = loadImage("MutantTexture.jpg");
  mutant.setTexture(mutantTexture);
  mutant.scale(40);
  //mutant.rotateX(radians(180));
  mutant.rotateZ(radians(180));
  
  //mutant.rotateY(radians(90));
 // mutant.rotateX(radians(90));
  backgroundFill = loadImage("VolcanicBackground.jpg");
  backgroundFill.resize(width, height);
  
}

void draw()
{
  
  background(backgroundFill); 
  shape(mutant, width/2, height/2);
  lights();
  
}
