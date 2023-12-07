// Hola profe, ahi pude cambiar el tema de que el minijuego estuviera en clase aventura. 
// Muchas gracias por este año (soy recursante de otra comi), Intente hacer buenos trabajos,
// en comparacion a mi año anterior, (Ya en el tp1 con mis 1500 lineas de codigo empece xd).
// Gracias y felices fiestas, hasta el prox año..

let estructura;

function setup() {
  createCanvas(1200, 600);
  estructura= new Aventura();
}

function draw() {
  estructura.dibujar();
}

function mousePressed() {
  estructura.PasardeEstado();
}

function mouseClicked() {
  estructura.Abrirpuerta();
}

function keyPressed() {
  estructura.Condiciontexto();
}
