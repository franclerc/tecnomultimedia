//video pedido:

int p = 18;
PImage[] Fondo =  new PImage[p];
int c = 100;
String[] texto = new String[c];
boolean PresionarAca;
PFont miFuente, miFuente2;
String estado;

void setup() {
  size(600, 600);
  //Estados
  estado = "Pantalla[0]";
  // Pantallas de fondo
  for ( int i = 0; i < p; i++ ) {
    Fondo[i] = loadImage( "data/Fondo" + i + ".png" );
  }
  // fuentes cargadas
  miFuente = loadFont("BerlinSansFBDemi-Bold-48.vlw");// Fuente de menu
  // miFuente2 = loadFont("TwCenMT-Regular-48.vlw");
  miFuente2 = loadFont("CooperBlack-48.vlw");
  Textos();
}

void draw() {

  if (estado.equals("Pantalla[0]") ) {
    background(0);
    image(Fondo[0], 0, 0);
    if (mouseX > 229 && mouseX < 410 && mouseY > 240 && mouseY < 290) {
      fill( 113, 255, 244 );
    } else {
      fill( 48, 209, 197 );
    }
    textFont(miFuente);
    textSize(40);
    text("Comenzar", 230, 275);
    if (mouseX > 229 && mouseX < 370 && mouseY > 340 && mouseY < 375) {
      fill( 113, 255, 244 );
    } else {
      fill( 48, 209, 197 );
    }
    text("Creditos", 230, 365);
  }
  if ( estado.equals("Pantalla[1]") ) {
    background(0);
    image(Fondo[1], 0, -10);
    confgtext (15, color (200, 0, 0) );
    text(texto[1], 20, 65);
    confgtext (15, color (0) );
    text(texto[2], 20, 310);
    confgtext (15, color (180, 0, 27) );
    text(texto[3], 250, 510);
    Boton(550, 30, 29, 550, 30, 90, 30);//Primeros tres numeros, donde hay que presionar, los ultimos cuatro numeros, ubicacion y tamaño del ellipse.
    confgtext (13, color (200) );
    text(texto[4], 523, 30);
  }
  if ( estado.equals("Pantalla[2]") ) {
    background(0);
    image(Fondo[2], 0, 0);
    confgtext (15, color (255) );
    text(texto[5], 50, 45);
    confgtext (15, color (110) );
    text(texto[6], 150, 120);
    Boton(150, 400, 29, 150, 400, 90, 30);
    confgtext (13, color (200) );
    text (texto[8], 125, 400);
    Boton(440, 400, 29, 440, 400, 90, 30);
    confgtext (13, color (200) );
    text (texto[7], 412, 400);
  }
  if ( estado.equals("Pantalla[3]") ) {
    background(0);
    image(Fondo[3], 0, 0);
    confgtext (15, color (70, 35, 7) );
    text (texto[9], 280, 400 );
    confgtext (15, color (0) );
    text (texto[10], 20, 520 );
    Boton(500, 100, 29, 500, 100, 90, 30);
    confgtext (12, color (200) );
    text (texto[11], 480, 95);
    text (texto[12], 473, 105);
  }
  if ( estado.equals("Pantalla[4]") ) {
    background(0);
    image(Fondo[4], 0, 0);
    confgtext (20, color (0) );
    text (texto[13], 20, 300 );
    Boton(200, 400, 29, 200, 400, 90, 30);
    confgtext (13, color (200) );
    text (texto[14], 173, 400);
  }
  if ( estado.equals("Pantalla[5]") ) {
    background(0);
    image(Fondo[5], 0, 0);
    confgtext (15, color (255) );
    text (texto[15], 290, 30 );
    confgtext (15, color (255) );
    text (texto[16], 10, 230 );
    confgtext (15, color (255) );
    text (texto[17], 250, 320 );
    Boton(100, 400, 29, 100, 400, 90, 30);
    confgtext (13, color (200) );
    text (texto[19], 80, 400 );
    Boton(500, 400, 29, 500, 400, 90, 30);
    confgtext (13, color (200) );
    text (texto[18], 460, 400 );
  }
  if ( estado.equals("Pantalla[6]") ) {
    background(0);
    image(Fondo[6], 0, 0);
    confgtext (20, color (255) );
    text (texto[20], 20, 30 );
    Boton(535, 30, 29, 535, 30, 90, 30);
    confgtext (12, color (200) );
    text (texto[21], 515, 30 );
  }
  if ( estado.equals("Pantalla[7]") ) {
    background(0);
    image(Fondo[7], 0, 0);
    confgtext (15, color (0) );
    text (texto[23], 20, 30 );
    confgtext (15, color (0) );
    text (texto[24], 320, 50 );
    confgtext (15, color (0) );
    text (texto[25], 380, 150 );
    Boton(80, 500, 29, 80, 500, 90, 30);
    confgtext (13, color (200) );
    text (texto[26], 50, 500 );
    Boton(530, 500, 29, 530, 500, 90, 30);
    confgtext (13, color (200) );
    text (texto[27], 520, 500 );
  }
  if ( estado.equals("Pantalla[8]") ) {  //1er final
    background(0);
    image(Fondo[8], 0, 0);
    confgtext (15, color (0) );
    text (texto[28], 390, 200 );
    confgtext (15, color (0) );
    text (texto[29], 120, 490 );
    Boton(530, 500, 29, 530, 500, 90, 30);
    confgtext (13, color (200) );
    text (texto[30], 512, 500 );
  }
  if ( estado.equals("Pantalla[9]") ) {
    background(0);
    image(Fondo[9], 0, 0);
  }
  if ( estado.equals("Pantalla[10]") ) {
    background(0);
    image(Fondo[10], 0, 0);
  }
  if ( estado.equals("Pantalla[11]") ) {
    background(0);
    image(Fondo[11], 0, 0);
  }
  if ( estado.equals("Pantalla[12]") ) {
    background(0);
    image(Fondo[12], 0, 0);
  }
  if ( estado.equals("Pantalla[13]") ) {
    background(0);
    image(Fondo[13], 0, 0);
  }
  if ( estado.equals("Pantalla[14]") ) {
    background(0);
    image(Fondo[14], 0, 0);
  }
  if ( estado.equals("Pantalla[15]") ) {
    background(0);
    image(Fondo[15], 0, 0);
  }
  if ( estado.equals("Pantalla[16]") ) {
    background(0);
    image(Fondo[16], 0, 0);
  }
  if ( estado.equals("Pantalla[17]") ) {
    background(0);
    image(Fondo[17], 0, 0);
    Boton(300, 550, 29, 300, 550, 90, 30);
    confgtext (13, color (200) );
    text (texto[31], 278, 550 );
  }
}


void mousePressed() {


  if ( estado == "Pantalla[0]" ) {
    if (mouseY < height/2) {
      estado = "Pantalla[1]";
    }
    if (mouseY > height/2) {
      estado = "Pantalla[17]";
    }
  } else if (estado == "Pantalla[1]") {
    if (dist(mouseX, mouseY, 550, 30)<=29) {
      estado = "Pantalla[2]";
    }
  } else if (estado == "Pantalla[17]") {
    if (dist(mouseX, mouseY, 300, 550)<=29) {
      estado = "Pantalla[0]";
    }
  } else if (estado == "Pantalla[2]") {
    if (mouseX > width/2) {
      estado = "Pantalla[3]";
    }
    if (mouseX < width/2) {
      estado = "Pantalla[10]";
    }
  } else if (estado == "Pantalla[3]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {
      estado = "Pantalla[4]";
    }
  } else if (estado == "Pantalla[4]") {
    if (dist(mouseX, mouseY, 200, 400)<=29) {
      estado = "Pantalla[5]";
    }
  } else if (estado == "Pantalla[5]") {
    if (mouseX > width/2) {
      estado = "Pantalla[6]";
    }
    if (mouseX < width/2) {
      estado = "Pantalla[7]";
    }
  } else if (estado == "Pantalla[6]") {
    if (dist(mouseX, mouseY, 535, 30)<=29) {
      estado = "Pantalla[7]";
    }
  } else if (estado == "Pantalla[7]") {
    if (mouseX > width/2) {
      estado = "Pantalla[9]";
    }
    if (mouseX < width/2) {
      estado = "Pantalla[8]";
    }
  } else if (estado == "Pantalla[8]") {
    if (dist(mouseX, mouseY, 512, 500)<=29) {
      estado = "Pantalla[0]";
    }
  } else if (estado == "Pantalla[9]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {// a partir de aca falta poner botones
      estado = "Pantalla[2]";
    }
  } else if (estado == "Pantalla[10]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {
      estado = "Pantalla[11]";
    }
  } else if (estado == "Pantalla[11]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {
      estado = "Pantalla[12]";
    }
  } else if (estado == "Pantalla[12]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {
      estado = "Pantalla[13]";
    }
  } else if (estado == "Pantalla[13]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {
      estado = "Pantalla[14]";
    }
  } else if (estado == "Pantalla[14]") {
    if (mouseX > width/2) {
      estado = "Pantalla[15]";
    }
    if (mouseX < width/2) {
      estado = "Pantalla[16]";
    }
  } else if (estado == "Pantalla[15]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {
      estado = "Pantalla[0]";
    }
  } else if (estado == "Pantalla[16]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {
      estado = "Pantalla[0]";
    }
  }
}
