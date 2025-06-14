//LINK DEL VIDEO: https://youtu.be/cfVceq46U7c

PImage TP3; 
int cols = 22, rows = 22; 
float deformacion = -500; 
boolean cambiarColor = false;

void setup() {
  size(800, 400);
  TP3 = loadImage("TP3.jpg");
}

void draw() { 
  background(255); 
  image(TP3, 0, 0, 400, 400); 
  dibujarArteOptico(400, 0, 400, 400); 
}
