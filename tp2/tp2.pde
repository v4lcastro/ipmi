//cambio pantallas
int pantalla = 0;
int tiempoCambioPantalla = 5000;
int tiempoAnterior = 0;

//variables animacion
float textAlpha = 0;
float fadeSpeed = 3.0;

//imagenes
PImage shark1, shark2, shark3, shark4, shark5, shark6, shark7, shark8;

//fuentes
PFont fontPantalla1, fontPantalla2, fontPantalla3, fontPantalla4, fontPantalla5, fontPantalla6, fontPantalla7, fontPantalla8;

//boton reinicio (ultima pantalla)
int buttonX, buttonY, buttonW = 150, buttonH = 50;
//tiempo que entra a pantalla 
int tiempoInicioPantalla4;

void setup() {
  size(640, 480);

//cargar imagenes
  shark1 = loadImage("shark1.jpg");
  shark2 = loadImage("shark2.jpg");
  shark3 = loadImage("shark3.jpg");
  shark4 = loadImage("shark4.jpg");
  shark5 = loadImage("shark5.jpg");
  shark6 = loadImage("shark6.jpg");
  shark7 = loadImage("shark7.jpg");
  shark8 = loadImage("shark8.jpg");

//cargar dif fuentes
  fontPantalla1 = createFont("Didot-Italic", 32);
  fontPantalla2 = createFont("Didot-Italic", 32);
  fontPantalla3 = createFont("HannotateTC-W7", 32);
  fontPantalla4 = createFont("Katari-Regular", 32);
  fontPantalla5 = createFont("Kokonor", 32);
  fontPantalla6 = createFont("Srisakdi-Regular", 32);
  fontPantalla7 = createFont("STFangsong", 32);
  fontPantalla8 = createFont("Skia-Regular_Condensed", 32); 

//posicion del boton
  buttonX = width - buttonW - 20;
  buttonY = height - buttonH - 20;
}

void draw() {
  if (millis() - tiempoAnterior >= tiempoCambioPantalla && pantalla < 7) {
    pantalla++;
    tiempoAnterior = millis();
    textAlpha = 0;
  }

  if (pantalla == 0) pantalla1();
  else if (pantalla == 1) pantalla2();
  else if (pantalla == 2) pantalla3();
  else if (pantalla == 3) pantalla4();
  else if (pantalla == 4) pantalla5();
  else if (pantalla == 5) pantalla6();
  else if (pantalla == 6) pantalla7();
  else if (pantalla == 7) pantalla8();
}

void pantalla1() {
  background(255);
  image(shark1, 0, 0, width, height);
  textFont(fontPantalla1); 
  fill(0, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);
  
//texto arriba
  text("The Physical Impossibility of Death", 313, 30);
  text("in the Mind of Someone Living", 313, 67);
//texto abajo
  textSize(32);
  text("1991", 333, 443);
  text("Damien Hirts", 333, 398);
//aumento opacidad
  textAlpha += fadeSpeed;
//limite opacidad
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla2() {
  background(255);
  image(shark2, 0, 0, width, height);
  textFont(fontPantalla2);
  fill(0, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);
  
//texto arriba
  text("La Imposibilidad Física de la Muerte", 316, 30);
  text("en la Mente de Alguien Vivo", 316, 60);
//texto abajo
  textSize(32);
  fill(0, textAlpha);
  text("1991", 333, 443);
  text("Damien Hirst", 333, 398);
//aumento opacidad
  textAlpha += fadeSpeed;
//limite opacidad
  if (textAlpha > 255) textAlpha = 255;
 
}

void pantalla3() {
  background(255);
  image(shark3, 0, 0, width, height);
  textFont(fontPantalla3); 
  fill(255, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);

//texto arriba
  text("Escultura de un tiburón tigre", 316, 30);
  text("de mas de 4 metros de largo", 316, 56);
  text("suspendido en formaldehído.", 316, 81);
  fill(255, textAlpha);
//texto abajo
  textSize(32);
  fill(255, textAlpha);
  text("La obra es conocida por su impacto cultural,", 333, 368);
  text("ha sido objeto de controversia", 333, 393);
  text("y debate en el mundo del arte.", 333, 420 );
//aumentar opacidad
  textAlpha += fadeSpeed;
//limitar opacidad
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla4() {
  background(255);
  image(shark4, 0, 0, width, height);
  textFont(fontPantalla4);
  fill(0, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);
  
//texto arriba
  text("se refiere a la imposibilidad", 316, 30);
  text("de concebir la muerte en un ser vivo.",316, 60);
//texto abajo
  textSize(32);
  fill(255, textAlpha);
  text("La obra utiliza la preservación", 333, 370);
  text("del animal como una metáfora", 333, 395);
  text("de la vida y la muerte;", 333, 420);
//aumentar opacidad
  textAlpha += fadeSpeed;
//limitar opacidad
  if (textAlpha > 255) textAlpha = 255;  

}

void pantalla5() {
  background(255);
  image(shark5, 0, 0, width, height);
  textFont(fontPantalla5);
  fill(255, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);
  
//texto arriba
  text("plantea preguntas sobre", 316, 30);
  text("la fragilidad de la vida", 316, 65);
//texto abajo
  textSize(32);
  fill(255, textAlpha);
  text("y la inevitabilidad de la muerte.", 333, 393);
//aumentar opacidad
  textAlpha += fadeSpeed;
//limitar opacidad
  if (textAlpha > 255) textAlpha = 255;
  
}

void pantalla6() {
  background(255);
  image(shark6, 0, 0, width, height);
  textFont(fontPantalla6);
  fill(255, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);

//texto arriba
  text("El tiburón, aunque intacto,", 316, 30);
  text("es una presencia inquietante.", 316, 60);
//texto abajo
  textSize(32);
  fill(0, textAlpha);
  text("Obliga al espectador", 333, 366);
  text("a enfrentarse con sus miedos", 333, 393);
  text("más profundos.", 333, 420);
//aumentar opacidad
  textAlpha += fadeSpeed;
//limitar opacidad
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla7() {
  background(255);
  image(shark7, 0, 0, width, height);
  textFont(fontPantalla7);
  fill(255, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);

//texto arriba
  text("La obra se ha convertido", 316, 30);
  text("en un ícono del arte contemporáneo.", 316, 60);
//texto abajo
  textSize(32);
  fill(255, textAlpha);
  text("Genera debates sobre el valor,", 333, 370);
  text("la autenticidad", 333, 393);
  text("y el significado del arte.", 333, 420);
//aumentar opacidad
  textAlpha += fadeSpeed;
//limitar opacidad
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla8() {
  image(shark8, 0, 0, width, height);
  textFont(fontPantalla8);
  fill(255, textAlpha);
  textAlign(CENTER, CENTER);
  
//texto arriba
  text("el autor pretende evadir la muerte", 316, 30);
  text("con la conservación de cuerpos", 316, 60);
//texto abajo
  textSize(32);
  fill(255, textAlpha);
  text("pero se demuestra que la muerte,", 333, 368);
  text("acaba cumpliendo su ciclo.", 333, 400);
//aumentar opacidad
  textAlpha += fadeSpeed; 
//limitar opacidad
  if (textAlpha > 255) textAlpha = 255;  

// boton reinicio con hover
  if (mouseX > buttonX && mouseX < buttonX + buttonW &&
      mouseY > buttonY && mouseY < buttonY + buttonH) {
// cambia color mouse si esta encima
    fill(150, 220, 255);
  } else {
    fill(100, 200, 250);
  }
  rect(buttonX, buttonY, buttonW, buttonH, 10);

//texto del boton
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Reiniciar", buttonX + buttonW / 2, buttonY + buttonH / 2);
}


void mousePressed() {
  if (pantalla == 7 &&
      mouseX > buttonX && mouseX < buttonX + buttonW &&
      mouseY > buttonY && mouseY < buttonY + buttonH) {
    pantalla = 0;
    tiempoAnterior = millis();
    textAlpha = 0;
  }
}
