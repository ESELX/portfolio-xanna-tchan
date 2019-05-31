/**
 * Load and Display an OBJ Shape. 
 * 
 * The loadShape() command is used to read simple SVG (Scalable Vector Graphics)
 * files and OBJ (Object) files into a Processing sketch. This example loads an
 * OBJ file of a rocket and displays it to the screen. 
 */


PShape rocket;

float ry;
  
public void setup() {
  size(970,700, P3D);
    
  rocket = loadShape("rocket.obj");
}

void draw() {
  background(3255757);
  lights();
  translate(width/2, height/6 + 350, -0);
  float zoom = map(mouseX, 5, width, 2.0, 50.0);
  scale(zoom);
  rotateZ(PI);
  rotateY(ry);
  shape(rocket);
  
  ry += 0.04;
}
