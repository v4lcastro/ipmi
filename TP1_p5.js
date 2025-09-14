//LINK DEL VIDEO: https://youtu.be/EDZ3wD0Ef0E

let cols = 22, rows = 22;
let deformacion = -500;
let cambiarColor = false;
let TP3;


function setup() {
  createCanvas(800, 400);
}

function draw() {
  background(255);

//lado izquierdo con imagen 
  image(loadImage("TP3.jpg"), 0, 0, 400, 400);

//lado derecho arte optico
  dibujarArteOptico(400, 0, 400, 400);
}

function dibujarArteOptico(x, y, w, h) {
  let espX = w / cols;
  let espY = h / rows;
  let cx = x + w / 2;
  let cy = y + h / 2;

  for (let i = 0; i < cols; i++) {
    for (let j = 0; j < rows; j++) {

      let x0 = x + i * espX;
      let y0 = y + j * espY;
      let esquina = [];

      for (let k = 0; k < 4; k++) {
        let offsetX = (k == 1 || k == 2) ? espX : 0;
        let offsetY = (k >= 2) ? espY : 0;

        let px = x0 + offsetX;
        let py = y0 + offsetY;

        let d = dist(px, py, cx, cy);
        let angle = atan2(py - mouseY, px - mouseX);
        let deform = map(d, 0, 200, obtenerFactor(deformacion), 0);

        let newX = px + cos(angle) * deform * 0.01;
        let newY = py + sin(angle) * deform * 0.01;

        esquina.push(createVector(newX, newY));
      }

//color en escala
      let t = map(dist(x0, y0, cx, cy), 0, 280, 0, 1);

      if (cambiarColor) {
        fill(lerpColor(color(255, 100, 100), color(100, 100, 255), t));
      } else {
        let c = lerp(255, 30, t);
        fill(c);
      }

//lineas doradas
      stroke(194, 160, 60);
      strokeWeight(1.5);

      beginShape();
      for (let k = 0; k < 4; k++) {
        vertex(esquina[k].x, esquina[k].y);
      }
      endShape(CLOSE);
    }
  }
}

//funcion sin retorno
function cambiarEstadoColor(estado) {
  cambiarColor = estado;
}

//funcion con retorno
function obtenerFactor(base) {
  return base * 1.5;
}

//teclado
function keyPressed() {
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

//reiniciar todo
function reiniciarVariables() {
  deformacion = 100;
  cambiarColor = false;
}
