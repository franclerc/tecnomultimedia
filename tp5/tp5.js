//video pedido:
//https://www.youtube.com/watch?v=uC4u47-oikQ

let Juego;

function setup() {
  createCanvas(600,600);
  Juego= new minijuego();
}

function draw() {
  background(0);
  Juego.dibujar();
 
}

function mouseClicked() {
  Juego.Abrirpuerta();
}

function mousePressed() {
  Juego.HacerClickMenu();
 
}
