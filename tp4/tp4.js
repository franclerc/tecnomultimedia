// Tarda unos seg en arrancar..
// video pedido:
// https://www.youtube.com/watch?v=2Eel_GK0HV0

let estado, mover;        //VARIABLES GLOBALES
let img=[];
let time, Izquierda, muertes, murio, salvados, salvaste;
let maxImagenes =2;
let helicoptero= new Array(2);
let Tipografia;
let Posxbote, Posybote, x2, x3, Posxhuman, Posyhuman, Posxhelip, ancho, alto;
let Posxhuman1, Posyhuman1, ancho1, alto1;


function preload() {                             //IMGENES E TIPOGRAFIAS CARGADAS
  helicoptero[0]=loadImage('Heli/Imagen0.png');
  helicoptero[1]=loadImage('Heli/Imagen1.png');
  img[0]=loadImage('img/Portada.png');
  img[1]=loadImage('img/Luna.png');
  img[2]=loadImage('img/Ondas.png');
  img[3]=loadImage('img/Bote1.png');
  img[4]=loadImage('img/Acantilado.png');
  img[5]=loadImage('img/persona.png');
  img[6]=loadImage('img/tiburon.png');
  Tipografia = loadFont('data/IMPACTFUL.ttf');
}

function setup() {           //VARIABLES GLOBALES CARGADAS
  createCanvas(600, 600);
  estado=0;
  mover=0;
  Posxbote=200;
  Posybote= 370;
  Posxhuman= 250;
  Posyhuman=40;
  Posxhuman1= 255;
  Posyhuman1=40;
  Posxhelip=200;
  ancho=100;
  alto=100;
  ancho1=100;
  alto1=100;
  x2=400;
  x3=0;
  time=0;
  indice=0;
  muertes=0;
  murio= false;
  salvados= false;
  salvaste=0;
  frameRate(50);
}

function draw() {
  if (estado == ("0")) {                  //MENU
    background(0);
    image(img[0], 0, 0);
    Boton(200, 380, 250, 290, 200, 250, 180, 40);
    Boton(200, 380, 350, 390, 200, 350, 180, 40);
    textportada(30);
    text('Jugar', 240, 280);
    text('Creditos', 215, 380);
  } else if (estado == ("1")) {           //JUEGO
    background(0);
    push();  // CIELO
    fill(7, 16, 72);
    rect(0, 0, 600, 600);
    tint(180, 180, 200);
    image(img[1], 30, 130, 150, 150);
    pop();
    push();           // MAR
    noStroke();
    fill(62, 111, 255, 100);
    rect(-10, 400, 700, 400);//
    image(img[2], 40, 400, 40, 40);
    image(img[2], 340, 400, 40, 40);
    image(img[2], 100, 520, 55, 55);
    image(img[2], 450, 520, 55, 55);
    image(img[4], 400, 300, 200, 200);
    image(img[3], Posxbote, Posybote, 200, 200);
    fill(62, 111, 255, 0);           // colicion bordes barco.
    rect(x3, 0, 30, 600);
    rect(x2, 0, 30, 600);
    pop();

    //PARACAIDISTA
    time++; // contador
    if (time > 60) {
      image(img[5], Posxhuman, Posyhuman, ancho, alto);
      if (Posyhuman > 80 && ancho < 130 &&  alto < 130) {
        Posxhuman = random(30, 270);
        ancho++;
        alto++;
      }
      if (dist(Posxhuman, Posyhuman, Posxbote, Posybote)> 50 ) {  // colicion de persona con bote..
        Posyhuman= Posyhuman+2;
      } else {
        salvados= true;
        salvaste++;
        Posyhuman= 60;
        ancho=100;
        alto=100;
        Posxhuman= 240;
      }
      if (Posyhuman == 360) {
        murio= true;
        muertes++;
        Posyhuman= 60;
        ancho=100;
        alto=100;
        Posxhuman= 260;
      }
    }
    textportada(15);
    text('Muertes='+ muertes, 480, 40);
    text('Salvados='+ salvaste, 20, 40);


    if (salvaste >  15) {            //X2
      image(img[5], Posxhuman1, Posyhuman1, ancho1, alto1);
      if (Posyhuman1 > 80 && ancho1 < 130 &&  alto1 < 130) {
        Posxhuman1= random(30, 270);
        ancho1++;
        alto1++;
      }
      if (dist(Posxhuman1, Posyhuman1, Posxbote, Posybote)> 50 ) {  // colicion de persona con bote..
        Posyhuman1++;
      } else {
        salvados= true;
        salvaste++;
        Posyhuman1= 100;
        ancho1=100;
        alto1=100;
        Posxhuman1= 255;
      }
      if (Posyhuman1 == 360) {
        murio= true;
        muertes++;
        Posyhuman1= 100;
        ancho1=100;
        alto1=100;
        Posxhuman1= 245;
      }
    }


    if (salvaste == 30) {  // condicion para ganar y perder..
      estado= "2";
      salvaste=0;
      muertes=0;
      time=0;
    }
    if (muertes > 3 ) { // tres vidas.. condicion para perder..
      estado=3;
      muertes=0;
      salvaste=0;
      time=0;
    }


    if (muertes >= 1) {  // tiburon, perdida de vidas...
      Tiburon(430);
    }
    if (muertes >= 2) {
      Tiburon(480);
    }
    if (muertes >= 3) {
      Tiburon(530);
    }

    // HELICOPTERO.....
    image(helicoptero[mover], Posxhelip, 0, 200, 120);
    if ( frameCount%20 == 0 ) {
      mover++;
    }
    if ( mover == maxImagenes ) {
      mover = 0;
    }

    if (Posxhelip == 200) {     //condicion de movimiento
      Izquierda = true;
    }
    if (Posxhelip == 250) {
      Izquierda = false;
    }
    if (Izquierda == false) {
      Posxhelip--;
    } else {
      Posxhelip++;
    }
  } else if (estado == ("2")) {   // PANTALLA DE GANASTE
    background(0);
    image(img[0], 0, 0);
    textportada(100);
    text("Ganaste!!", 30, 300);
    // boton para volver
    Boton(200, 380, 480, 520, 200, 470, 180, 40);
    textSize(17);
    fill(160);
    text("Volver al inicio", 220, 495);
  } else if (estado == ("3")) {   // PANTALLA DE PERDER
    background(0);
    image(img[0], 0, 0);
    textportada(100);
    text("Perdiste", 50, 300);
    Boton(200, 380, 480, 520, 200, 470, 180, 40);
    textSize(17);
    fill(160);
    text("Volver al inicio", 220, 495);
  } else if (estado == ("4")) {   // PANTALLA DE CREDITOS E INSTRUCIONES
    background(0);
    image(img[0], 0, 0);
    textportada(30);
    text("Creditos", 40, 300);
    text("Instrucciones", 40, 80);
    fill(180);
    textSize(17);
    text("Alumna: Clerc Renaud Francisca.", 40, 330);
    text("Legajo: 91500/8.", 40, 350);
    text("Basado en juego:'Parachute' de los 80.", 40, 370);

    text("El jugador debera mover el bote de izquierda a derecha\npara salvar a los paracaidista que van cayendo del\nhelicoptero.\nSi tres paracaidista caen al agua, el jugador perdera\naurtomaticamente.\nY si rescata a 30 personas, ganara de inmediato.", 40, 110);
    Boton(200, 380, 480, 520, 200, 470, 180, 40);
    fill(160);
    text("Volver al inicio", 220, 495);
  }
}

function mousePressed() {   // BOTONES
  if (estado == ("0") && (mouseX > 250 && mouseX < 370 && mouseY  > 250 && mouseY < 290)) {
    estado= 1;
  } else if (estado == ("0") && (mouseX > 250 && mouseX < 370 && mouseY  > 350 && mouseY < 390)) {
    estado= 4;
  } else if (estado== ("4") && (mouseX > 200 && mouseX < 380 && mouseY  > 480 && mouseY < 520)) {
    estado=0;
  } else if (estado== ("2") && (mouseX > 200 && mouseX < 380 && mouseY  > 480 && mouseY < 520)) {
    estado=0;
  } else if (estado== ("3") && (mouseX > 200 && mouseX < 380 && mouseY  > 480 && mouseY < 520)) {
    estado=0;
  }
}




function keyPressed() {    // MOVIMIENTO DEL BOTE
  if ( keyCode == RIGHT_ARROW) {
    if (dist(Posxbote, 200, x2, 200)< 180) {
      Posxbote.stop();
    } else {
      Posxbote+=30;
    }
  }
  if ( keyCode == LEFT_ARROW) {
    if (dist(Posxbote, 200, x3, 200)==0) {
      Posxbote.stop();
    } else {
      Posxbote-=30;
    }
  }
}
