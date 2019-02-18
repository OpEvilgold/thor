PShape thor;
PShape giant;
void setup() {
  fullScreen(P3D); 
  background(0);
  thor = loadShape("thor.obj");
  giant =loadShape("giant.obj");
  giant.setFill(color(#FF4141));
  thor.setFill(color(255));
  thor.scale(2);
  giant.scale(5);
  giant.rotateX(135);
  giant.rotateY(radians(90));
  thor.rotateX(135);
  thor.rotateY(radians(270));
}
void draw() {
  background(0);
  lights();
  shape(giant,width/2+300,height/2+200);
  shape(thor, mouseX, mouseY + 100);
}
