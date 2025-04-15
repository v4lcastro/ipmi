void setup (){
  background(2, 44, 59);
  size(800,400);
  PImage cara;
  cara = loadImage("foto.png");
  image(cara, 400, 0, 300, 400);
  
  
}

void draw(){
  
  //pelo (atras)
  fill(31, 17, 9);
  stroke(28, 14, 6);
  ellipse(200, 148, 173, 150);
  quad(114, 138, 109, 435, 302, 384, 286, 140);
  
  //cabeza y cuello
  noStroke();
  fill(255, 232, 204);
  rect(174, 205, 48, 82, 4);
  circle(200, 194, 142);
  triangle(138, 175, 200, 111, 261, 177);
  
  //pelo 
  strokeWeight(3);
  fill(34, 17, 6);
  stroke(28, 14, 6);
  bezier(275, 137, 284, 190, 203, 146, 199, 105); //cotinas cabello izq
  bezier(118, 137, 106, 194, 184, 146, 204, 105); // cortinas cabello dere
  rect(258, 149, 15, 252, 0);
  rect(124, 149, 15, 252, 0);
  
  //brazos
  noStroke();
  fill(255, 232, 204);
  quad(194, 375, 98, 344, 107, 533, 142, 450); // izq
  quad(298, 326, 319, 507, 270, 704, 244, 345); // dere
  
  //torso
  strokeWeight(1);
  fill(8, 8, 8);
  triangle(274, 293, 194, 1131, 121, 290); //pecho 
  fill(255, 232, 204);
  arc(198, 288, 48, 50, 0, 180); // cuello remera
  fill(0, 0, 0);
  triangle(128, 368, 120, 293, 75, 368); //manga izq
  strokeWeight(1);
  triangle(275, 294, 324, 367, 267, 370);  // manga dere

  
  //cejas
  strokeWeight(5);
  stroke(0, 0, 0);
  fill(255, 232, 204);
  arc(173, 167, 34, 6, PI, TWO_PI); // izq
  arc(228, 167, 34, 6, PI, TWO_PI); // dere
  
  //ojos
  strokeWeight(4);
  stroke(0, 0, 0);
  arc(170, 185, 24, 4, PI, TWO_PI); // izq
  arc(226, 185, 24, 4, PI, TWO_PI); // dere
  
  noStroke();
  fill(0, 0, 0);
  circle(226, 193, 17);
  circle(172, 193, 17);
  
  stroke(255, 255, 255);
  fill(222, 160, 89);
  circle(226, 192, 4);
  circle(172, 192, 4);
  
  
  //pircing
  strokeWeight(2);
  fill(222, 160, 89);
  fill(240);
  circle (165, 172, 3);
  circle(165, 158, 3);
  
  //sonrisa
  stroke(255, 167, 135);
  fill(255, 232, 204);
  arc(196, 240, 30, 25, 0, PI);
  
  
  // nariz
  strokeWeight(2);
  line(204, 197, 207, 211);
  line(203, 214, 207, 211);
  
  //rasgos faciales (izq)
  stroke(130, 83, 3);
  circle(163, 205, 2);
  circle(179, 206, 2);
  circle(171, 211, 2);
  circle(163, 215, 2);
  circle(179, 216, 2);
  
  //rasgos faciales (dere)
  stroke(130, 83, 3);
  circle(215, 204, 2);
  circle(218, 214, 2);
  circle(224, 208, 2);
  circle(233, 203, 2);
  circle(234, 211, 2);
  
  //coordenada 
  
  


  
  
  println(mouseX);
  println("X:");
  println(mouseY);
  println("Y:");

}
