void dibujarArteOptico(float x, float y, float w, float h) {
  float espX = w / cols;
  float espY = h / rows;
  float cx = x + w / 2;
  float cy = y + h / 2;
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      float x0 = x + i * espX;
      float y0 = y + j * espY;
      PVector[] esquina = new PVector[4];

      for (int k = 0; k < 4; k++) {
        float offsetX = (k == 1 || k == 2) ? espX : 0;
        float offsetY = (k >= 2) ? espY : 0;

        float px = x0 + offsetX;
        float py = y0 + offsetY;


        float d = dist(px, py, cx, cy); 
        float angle = atan2(py - mouseY, px - mouseX);
        float deform = map(d, 0, 200, obtenerFactor(deformacion), 0);

        float newX = px + cos(angle) * deform * 0.01;
        float newY = py + sin(angle) * deform * 0.01;

        esquina[k] = new PVector(newX, newY);
      }

//color blanco/negro
      float t = map(dist(x0, y0, cx, cy), 0, 280, 0, 1);
      
      if (cambiarColor) {
        fill(lerpColor(color(255, 100, 100), color(100, 100, 255), t));
      } else {
        float c = lerp (255, 30, t);
        fill (c);
      }
      
// color lineas dorado
      stroke(194, 160, 60);
      strokeWeight(1.5);
      beginShape();
      for (int k = 0; k < 4; k++) {
        vertex(esquina[k].x, esquina[k].y);
      }
      endShape(CLOSE);
    }
  }
}

//funcion sin retorno
void cambiarEstadoColor(boolean estado) {
  cambiarColor = estado;
}

//funcion con retorno 
float obtenerFactor(float base) {
  return base * 1.5;
}

//teclado
void keyPressed() {
  if (key == 'c' || key == 'C') {
    cambiarEstadoColor(true);
  }
  if (key == 'r' || key == 'R') {
    cambiarEstadoColor(false);
      }
  if (key == 'x' || key == 'X') {
    reiniciarVariables();
  }
}
// Reiniciar todo
void reiniciarVariables() {
  deformacion = 100;
  cambiarColor = false;
}
