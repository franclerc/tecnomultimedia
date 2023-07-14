//video pedido:
//https://www.youtube.com/watch?v=yn82CaYsGDM

boolean Presione1, Presione2, Presione3;
int p = 18;
PImage[] Fondo =  new PImage[p];
int c = 100;
String[] texto = new String[c];
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
  miFuente2 = loadFont("CooperBlack-48.vlw");
  //textos
  Textos();
}

void draw() {

  if (estado.equals("Pantalla[0]") ) {
    background(0);
    image(Fondo[0], 0, 0);
    Boton(300, 265, 50, 300, 265, 150, 40);
    confgtext (22, color (255, 224, 248) );
    text("Comenzar", 245, 265);
    Boton(300, 350, 50, 300, 350, 150, 40);
    confgtext (22, color (255, 224, 248) );
    text("Creditos", 252, 350);
  }
  if ( estado.equals("Pantalla[1]") ) {
    background(0);
    image(Fondo[1], 0, -10);
    if (Presione1 == true) {
      confgtext (19, color (200, 0, 0, 255) );
    } else {
      confgtext (30, color (200, 0, 0));
      text("1", 70, 50);
      confgtext (19, color (200, 0, 0, 0));
    }
    text(texto[1], 20, 65);
    if (Presione2 == true) {
      confgtext (19, color (0, 0, 0, 255) );
    } else {
      confgtext (30, color (0));
      text("2", 50, 310);
      confgtext (19, color (10, 0, 0, 0) );
    }
    text(texto[2], 10, 310);
    if (Presione3 == true) {
      confgtext (19, color (0, 0, 0, 255) );
    } else {
      confgtext (30, color (0));
      text("3", 250, 550);
      confgtext (19, color (10, 0, 0, 0) );
    }
    text(texto[3], 250, 550);
    Boton(530, 30, 29, 530, 30, 90, 30);//Primeros tres numeros, donde hay que presionar, los ultimos cuatro numeros, ubicacion y tamaño del ellipse.
    confgtext (14, color (255) );
    text(texto[4], 492, 30);
  }
  if ( estado.equals("Pantalla[2]") ) {
    background(0);
    image(Fondo[2], 0, 0);
    if (Presione1 == true) {
      confgtext (19, color (255, 255, 255, 255) );
    } else {
      confgtext (30, color (255, 255, 255));
      text("1", 50, 45);
      confgtext (19, color (255, 255, 255, 0));
    }
    text(texto[5], 50, 45);
    if (Presione2 == true) {
      confgtext (19, color (110, 110, 110, 255) );
    } else {
      confgtext (30, color (110));
      text("2", 100, 120);
      confgtext (19, color ( 110, 110, 110, 0) );
    }
    text(texto[6], 100, 120);
    Boton(150, 400, 29, 150, 400, 90, 30);
    confgtext (13, color (220) );
    text (texto[8], 123, 400);
    Boton(440, 400, 29, 440, 400, 90, 30);
    confgtext (13, color (220) );
    text (texto[7], 410, 400);
  }
  if ( estado.equals("Pantalla[3]") ) {
    background(0);
    image(Fondo[3], 0, 0);
    if (Presione1 == true) {
      confgtext (19, color (70, 35, 7, 255) );
    } else {
      confgtext (30, color (70, 35, 7));
      text("1", 280, 400);
      confgtext (19, color (70, 35, 7, 0));
    }
    text (texto[9], 280, 400 );
    if (Presione2 == true) {
      confgtext (19, color (70, 70, 70, 255) );
    } else {
      confgtext (30, color (70, 70, 70));
      text("2", 20, 520);
      confgtext (19, color (70, 70, 70, 0));
    }
    text (texto[10], 20, 520 );
    Boton(500, 100, 29, 500, 100, 90, 30);
    confgtext (11, color (250) );
    text (texto[11], 470, 95);
    text (texto[12], 463, 105);
  }
  if ( estado.equals("Pantalla[4]") ) {
    background(0);
    image(Fondo[4], 0, 0);
    if (Presione1 == true) {
      confgtext (20, color (0, 0, 0, 255) );
    } else {
      confgtext (30, color (0, 0, 0));
      text("1", 20, 300);
      confgtext (19, color (70, 0, 0, 0));
    }
    text (texto[13], 20, 300 );
    Boton(200, 400, 29, 200, 400, 90, 30);
    confgtext (13, color (230) );
    text (texto[14], 163, 400);
  }
  if ( estado.equals("Pantalla[5]") ) {
    background(0);
    image(Fondo[5], 0, 0);
    if (Presione1 == true) {
      confgtext (19, color (230, 230, 230, 255) );
    } else {
      confgtext (30, color (230, 230, 230));
      text("1", 290, 30);
      confgtext (19, color (230, 230, 230, 0));
    }
    text (texto[15], 290, 30 );
    if (Presione2 == true) {
      confgtext (19, color (200, 200, 200, 255) );
    } else {
      confgtext (30, color (200, 200, 200));
      text("2", 10, 230);
      confgtext (19, color (200, 200, 200, 0));
    }
    text (texto[16], 10, 230 );
    if (Presione3 == true) {
      confgtext (18, color (216, 224, 255, 255) );
    } else {
      confgtext (30, color (216, 224, 255));
      text("3", 250, 340);
      confgtext (19, color (216, 224, 255, 0));
    }
    text (texto[17], 250, 340 );
    Boton(100, 400, 29, 100, 400, 90, 30);
    confgtext (13, color (210) );
    text (texto[19], 75, 400 );
    Boton(500, 400, 29, 500, 400, 95, 30);
    confgtext (12, color (210) );
    text (texto[18], 460, 400 );
  }
  if ( estado.equals("Pantalla[6]") ) {
    background(0);
    image(Fondo[6], 0, 0);
    if (Presione1 == true) {
      confgtext (20, color (255, 210, 167, 255) );
    } else {
      confgtext (30, color (255, 210, 167));
      text("1", 160, 70);
      confgtext (19, color (255, 210, 167, 0));
    }
    text (texto[20], 160, 70 );
    Boton(535, 30, 29, 535, 30, 90, 30);
    confgtext (12, color (250));
    text (texto[21], 515, 30 );
  }
  if ( estado.equals("Pantalla[7]") ) {
    background(0);
    image(Fondo[7], 0, 0);
    if (Presione1 == true) {
      confgtext (16, color (0, 0, 0, 255) );
    } else {
      confgtext (30, color (0, 0, 0));
      text("1", 20, 30);
      confgtext (19, color (70, 0, 0, 0));
    }
    text (texto[23], 20, 30 );
    if (Presione2 == true) {
      confgtext (16, color (60, 60, 60, 255) );
    } else {
      confgtext (30, color (60, 60, 60));
      text("2", 320, 50);
      confgtext (19, color (60, 60, 60, 0));
    }
    text (texto[24], 320, 50 );
    if (Presione3 == true) {
      confgtext (18, color (100, 100, 100, 255) );
    } else {
      confgtext (30, color (100, 100, 100));
      text("3", 370, 150);
      confgtext (19, color (100, 100, 100, 0));
    }
    text (texto[25], 370, 150 );
    Boton(80, 500, 29, 80, 500, 90, 30);
    confgtext (13, color (200) );
    text (texto[26], 40, 500 );
    Boton(530, 500, 29, 530, 500, 90, 30);
    confgtext (13, color (200) );
    text (texto[27], 515, 500 );
  }
  if ( estado.equals("Pantalla[8]") ) {  //1er final
    background(0);
    image(Fondo[8], 0, 0);
    if (Presione1 == true) {
      confgtext (18, color (20, 20, 20, 255) );
    } else {
      confgtext (30, color (20, 20, 20));
      text("1", 360, 220);
      confgtext (19, color (20, 20, 20, 0));
    }
    text (texto[28], 360, 200 );
    if (Presione2 == true) {
      confgtext (18, color (255, 255, 255, 255) );
    } else {
      confgtext (30, color (255, 255, 255));
      text("2", 20, 520);
      confgtext (19, color (255, 255, 255, 0));
    }
    text (texto[29], 20, 520 );
    Boton(530, 500, 29, 530, 500, 90, 30);
    confgtext (20, color (206, 251, 255) );
    text (texto[30], 512, 500 );
  }
  if ( estado.equals("Pantalla[9]") ) {
    background(0);
    image(Fondo[9], 0, 0);
    if (Presione1 == true) {
      confgtext (15, color (230, 230, 230, 255) );
    } else {
      confgtext (30, color (230, 230, 230));
      text("1", 30, 150);
      confgtext (19, color (230, 230, 230, 0));
    }
    text (texto[31], 30, 150 );
    if (Presione2 == true) {
      confgtext (15, color (208, 201, 255, 255) );
    } else {
      confgtext (30, color (208, 201, 255));
      text("2", 30, 250);
      confgtext (19, color (208, 201, 255, 0));
    }
    text (texto[32], 30, 250 );
    if (Presione3 == true) {
      confgtext (15, color (198, 165, 124, 255) );
    } else {
      confgtext (30, color (198, 165, 124));
      text("3", 230, 350);
      confgtext (19, color (198, 165, 124, 0));
    }
    text (texto[33], 230, 350 );
    Boton(440, 500, 29, 440, 500, 90, 30);
    confgtext (13, color (200) );
    text (texto[34], 414, 500 );
  }
  if ( estado.equals("Pantalla[10]") ) {
    background(0);
    image(Fondo[2], 0, 0);
    if (Presione1 == true) {
      confgtext (15, color (80, 80, 80, 255) );
    } else {
      confgtext (30, color (80, 80, 80));
      text("1", 150, 80);
      confgtext (19, color (80, 80, 80, 0));
    }
    text(texto[35], 150, 80);
    Boton(150, 400, 29, 150, 400, 90, 30);
    confgtext (13, color (200) );
    text (texto[8], 125, 400);
    Boton(440, 400, 29, 440, 400, 90, 30);
    confgtext (13, color (200) );
    text (texto[7], 412, 400);
  }
  if ( estado.equals("Pantalla[11]") ) {
    background(0);
    image(Fondo[10], 0, 0);
    if (Presione1 == true) {
      confgtext (15, color (85, 72, 58, 255) );
    } else {
      confgtext (30, color (85, 72, 58));
      text("1", 150, 30);
      confgtext (19, color (85, 72, 58, 0));
    }
    text(texto[36], 150, 30);
    if (Presione2 == true) {
      confgtext (15, color (118, 102, 84, 255));
    } else {
      confgtext (30, color (118, 102, 84));
      text("2", 240, 90);
      confgtext (19, color (118, 102, 84, 0));
    }
    text(texto[37], 240, 90);
    Boton(530, 560, 29, 530, 560, 90, 30);
    confgtext (13, color (180) );
    text (texto[38], 505, 560 );
  }
  if (estado.equals("Pantalla[12]") ) { // corregir este
    background(0);
    image(Fondo[12], 0, 0);
    if (Presione1 == true) {
      confgtext (18, color (255, 211, 250, 255) );
    } else {
      confgtext (30, color (255, 211, 250));
      text("1", 25, 260);
      confgtext (19, color (255, 211, 250, 0));
    }
    text(texto[39], 15, 260);
    if (Presione2 == true) {
      confgtext (19, color (220, 220, 220, 255) );
    } else {
      confgtext (30, color (220, 220, 220));
      text("2", 25, 340);
      text("2", 125, 400);
      confgtext (19, color (220, 220, 220, 0));
    }
    text(texto[40], 25, 340);
    //confgtext (17, color (220) );
    text(texto[41], 125, 400);
    if (Presione3 == true) {
      confgtext (19, color (255, 160, 244, 255) );
    } else {
      confgtext (30, color (255, 160, 244));
      text("3", 130, 550);
      confgtext (19, color (255, 160, 244, 0));
    }
    text(texto[43], 120, 550);
    Boton(530, 560, 29, 530, 560, 90, 30);
    confgtext (13, color (255) );
    text (texto[45], 509, 560 );
  }
  if ( estado.equals("Pantalla[13]") ) {
    background(0);
    image(Fondo[13], 0, 0);
    Boton(550, 40, 29, 550, 30, 100, 30);
    confgtext (13, color (240) );
    text (texto[46], 505, 30 );
    if (Presione1 == true) {
      confgtext (17, color (230, 230, 230, 255) );
    } else {
      confgtext (30, color (230, 230, 230));
      text("1", 25, 500);
      confgtext (19, color (230, 230, 230, 0));
    }
    text(texto[47], 25, 500);
    if (Presione1 == true) {
      confgtext (17, color (255, 211, 211, 255) );
    } else {
      confgtext (30, color (255, 211, 211));
      text("2", 25, 560);
      confgtext (19, color (255, 211, 211, 0));
    }
    text(texto[48], 25, 560);
  }
  if ( estado.equals("Pantalla[14]") ) {
    background(0);
    image(Fondo[14], 0, 0);
    if (Presione1 == true) {
      confgtext (18, color (242, 233, 179, 255) );
    } else {
      confgtext (30, color (242, 233, 179));
      text("1", 330, 420);
      confgtext (19, color (242, 233, 179, 0));
    }
    text(texto[49], 330, 420);
    Boton(550, 40, 29, 550, 30, 100, 30);
    confgtext (13, color (255) );
    text (texto[51], 510, 30 );
    Boton(60, 40, 29, 60, 30, 100, 30);
    confgtext (12, color (255) );
    text (texto[52], 17, 30 );
  }
  if ( estado.equals("Pantalla[15]") ) {  //Final, es un sueño..
    background(0);
    image(Fondo[15], 0, 0);
    if (Presione1 == true) {
      confgtext (18, color (255, 0, 0, 255) );
    } else {
      confgtext (30, color (255, 0, 0));
      text("1", 20, 30);
      confgtext (19, color (255, 0, 0, 0));
    }
    text(texto[53], 20, 30);
    if (Presione2 == true) {
      confgtext (18, color (193, 48, 0, 255) );
    } else {
      confgtext (30, color (193, 48, 0));
      text("2", 80, 100);
      confgtext (19, color (193, 48, 0, 0));
    }
    text(texto[54], 80, 100);
    Boton(500, 200, 29, 500, 200, 90, 30);
    confgtext (25, color (255) );
    text(texto[55], 478, 200);
  }

  if ( estado.equals("Pantalla[16]") ) { //Final, no es un sueño..
    background(0);
    image(Fondo[16], 0, 0);
    Boton(500, 50, 29, 500, 50, 90, 30);
    confgtext (25, color (255) );
    text(texto[55], 478, 52);
  }
  if ( estado.equals("Pantalla[17]") ) { // creditos..
    background(0);
    image(Fondo[17], 0, 0);
    Boton(300, 550, 29, 300, 550, 90, 30);
    confgtext (13, color (200) );
    text (texto[58], 278, 550 );
  }
}


void mousePressed() {


  if ( estado == "Pantalla[0]" ) {
    if (mouseY < 299) {
      estado = "Pantalla[1]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
    if (mouseY > 301) {
      estado = "Pantalla[17]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[1]") {
    if (dist(mouseX, mouseY, 530, 30)<=29) {
      estado = "Pantalla[2]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[2]") {
    if (dist(mouseX, mouseY, 150, 400)<=29) {//440, 400
      estado = "Pantalla[11]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
    if (dist(mouseX, mouseY, 440, 400)<=29) {
      estado = "Pantalla[3]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[3]") {
    if (dist(mouseX, mouseY, 500, 100)<=29) {
      estado = "Pantalla[4]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[4]") {
    if (dist(mouseX, mouseY, 200, 400)<=29) {
      estado = "Pantalla[5]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[5]") {
    if (dist(mouseX, mouseY, 500, 400)<=29) {
      estado = "Pantalla[6]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
    if (dist(mouseX, mouseY, 100, 400)<=29) {
      estado = "Pantalla[7]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[6]") {
    if (dist(mouseX, mouseY, 535, 30)<=29) {
      estado = "Pantalla[7]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[7]") {
    if (dist(mouseX, mouseY, 530, 500)<=29) {
      estado = "Pantalla[9]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
    if (dist(mouseX, mouseY, 80, 500)<=29) {
      estado = "Pantalla[8]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[8]") {
    if (dist(mouseX, mouseY, 512, 500)<=29) {
      estado = "Pantalla[0]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[9]") {
    if (dist(mouseX, mouseY, 440, 500)<=29) {
      estado = "Pantalla[10]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[10]") {
    if (mouseX > width/2) {
      estado = "Pantalla[3]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
    if (mouseX < width/2) {
      estado = "Pantalla[11]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[11]") {
    if (dist(mouseX, mouseY, 530, 560)<=29) {
      estado = "Pantalla[12]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[12]") {   // cambiar desde aca
    if (dist(mouseX, mouseY, 530, 560)<=29) {
      estado = "Pantalla[13]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[13]") {
    if (dist(mouseX, mouseY, 550, 40)<=29) {
      estado = "Pantalla[14]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[14]") {
    if (mouseX > width/2) {
      estado = "Pantalla[15]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
    if (mouseX < width/2) {
      estado = "Pantalla[16]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[15]") {
    if (dist(mouseX, mouseY, 500, 200)<=29) {
      estado = "Pantalla[0]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[16]") {        // arreglar desde aca
    if (dist(mouseX, mouseY, 500, 50)<=29) {
      estado = "Pantalla[0]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  } else if (estado == "Pantalla[17]") {
    if (dist(mouseX, mouseY, 300, 550)<=29) {//300,550
      estado = "Pantalla[0]";
      Presione1= false;
      Presione2= false;
      Presione3= false;
    }
  }
}

void keyPressed() {
  if (key == '1') {
    Presione1 = true;
  }
  if (key == '2') {
    Presione2 = true;
  }
  if (key == '3') {
    Presione3 = true;
  }
}
