class Puertas {
  //Constructor
  constructor() {
    this.puerta=[];
    this.puerta_bebida=[];
    this.puerta_muffin=[];
    this.puertasAbiertas = [];   //// AGREGANDO
    this.Puerta_Comeme= 0;
    this.Puerta_Bebeme= 0;
    this.Puerta_Muffin_Abierta = 0;
    this.Puerta_Bebida_Abierta = 0;
    this.tipografia= loadFont('data/IMPACTFUL.ttf');
    // img de puerta cerrada cargadas
    this.puerta[0]= loadImage("data/puerta.png");
    this.puerta[1]= loadImage("data/puerta.png");
    this.puerta[2]= loadImage("data/puerta.png");
    this.puerta[3]= loadImage("data/puerta.png");
    this.puerta[4]= loadImage("data/puerta.png");
    this.puerta[5]= loadImage("data/puerta.png");
    this.puerta[6]= loadImage("data/puerta.png");
    this.puerta[7]= loadImage("data/puerta.png");
    this.puerta[8]= loadImage("data/puerta.png");
    this.puerta[9]= loadImage("data/puerta.png");
    this.puerta[10]= loadImage("data/puerta.png");
    this.puerta[11]= loadImage("data/puerta.png");
    //
    //img de puerta muffin
    this.puerta_muffin[0]=loadImage("data/puertamuffin.png");
    this.puerta_muffin[1]=loadImage("data/puertamuffin.png");
    this.puerta_muffin[2]=loadImage("data/puertamuffin.png");
    this.puerta_muffin[3]=loadImage("data/puertamuffin.png");
    this.puerta_muffin[4]=loadImage("data/puertamuffin.png");
    this.puerta_muffin[5]=loadImage("data/puertamuffin.png");
    //
    //img de puerta bebida
    this.puerta_bebida[0]=loadImage("data/puertabebida.png");
    this.puerta_bebida[1]=loadImage("data/puertabebida.png");
    this.puerta_bebida[2]=loadImage("data/puertabebida.png");
    this.puerta_bebida[3]=loadImage("data/puertabebida.png");
    this.puerta_bebida[4]=loadImage("data/puertabebida.png");
    this.puerta_bebida[5]=loadImage("data/puertabebida.png");
  }


  //dibujar
  dibujar() {
    fill(160);
    textSize(20);
    textFont(this.tipografia);

    text('Puerta_Comeme='+this.Puerta_Comeme, 30, 580);
    text('Puerta_Bebeme='+this.Puerta_Bebeme, 30, 550);
    // puerta cerrada
    image(this.puerta[0], 30, 60, 150, 150);  // primer fila
    image(this.puerta[1], 170, 60, 150, 150);
    image(this.puerta[2], 310, 60, 150, 150);
    image(this.puerta[3], 450, 60, 150, 150);

    image(this.puerta[4], 30, 220, 150, 150);  // 2da fila
    image(this.puerta[5], 170, 220, 150, 150);
    image(this.puerta[6], 310, 220, 150, 150);
    image(this.puerta[7], 450, 220, 150, 150);

    image(this.puerta[8], 30, 380, 150, 150);  // tercera fila
    image(this.puerta[9], 170, 380, 150, 150);
    image(this.puerta[10], 310, 380, 150, 150);
    image(this.puerta[11], 450, 380, 150, 150);
    //
  }


Abrirpuerta() {

    if (mouseX > 52 && mouseX < 117 && mouseY > 85 && mouseY < 185) { //1era fila
      this.puerta[0]=this.puerta_muffin[0];

      this.Puerta_Muffin_Abierta++;
    }

    if (mouseX > 198 && mouseX < 254 && mouseY > 88 && mouseY < 182) {
      this.puerta[1]=this.puerta_bebida[0];

      this.Puerta_Bebida_Abierta++;
    }

    if (mouseX > 335 && mouseX < 393 && mouseY > 88 && mouseY < 182) {
      this.puerta[2]=this.puerta_bebida[1];

      this.Puerta_Bebida_Abierta++;
    }

    if (mouseX > 475 && mouseX < 534 && mouseY > 88 && mouseY < 182) {
      this.puerta[3]=this.puerta_muffin[1];

      this.Puerta_Muffin_Abierta++;
    }

    if (mouseX > 55 && mouseX < 114 && mouseY > 248 && mouseY < 341) { //2da fila
      this.puerta[4]=this.puerta_bebida[2];
      this.empezo=true;
      this.Puerta_Bebida_Abierta++;
    }

    if (mouseX > 195 && mouseX < 250 && mouseY > 248 && mouseY < 343) {
      this.puerta[5]=this.puerta_muffin[2];

      this.Puerta_Muffin_Abierta++;
    }

    if (mouseX > 332 && mouseX < 397 && mouseY > 245 && mouseY < 345) {
      this.puerta[6]=this.puerta_bebida[3];

      this.Puerta_Bebida_Abierta++;
    }

    if (mouseX > 472 && mouseX < 537  && mouseY > 245 && mouseY < 345) { //
      this.puerta[7]=this.puerta_bebida[4];

      this.Puerta_Bebida_Abierta++;
    }

    if (mouseX > 52 && mouseX < 117  && mouseY >410 && mouseY < 497) {  // 3ra fila
      this.puerta[8]=this.puerta_muffin[3];

      this.Puerta_Muffin_Abierta++;
    }

    if (mouseX > 192 && mouseX < 258  && mouseY > 410 && mouseY < 497) {
      this.puerta[9]=this.puerta_bebida[5];
      this.Puerta_Bebida_Abierta++;
    }

    if (mouseX > 332 && mouseX < 397  && mouseY > 410 && mouseY < 497) {
      this.puerta[10]=this.puerta_muffin[4];

      this.Puerta_Muffin_Abierta++;
    }

    if (mouseX > 476 && mouseX < 532 && mouseY > 410 && mouseY < 497) {
      this.puerta[11]=this.puerta_muffin[5];

      this.Puerta_Muffin_Abierta++;
    }





    if (this.Puerta_Muffin_Abierta > 0 && this.Puerta_Bebida_Abierta > 0) {
      // Reiniciar el juego
      this.Puerta_Muffin_Abierta = 0;
      this.Puerta_Bebida_Abierta = 0;
      this.Puerta_Comeme= 0;
      this.Puerta_Bebeme= 0;

      // Restaurar las imágenes de las puertas cerradas
      this.puerta = [...this.puerta.map(() => loadImage("data/puerta.png"))];
    }

    if (this.Puerta_Muffin_Abierta == 2) {
      this.Puerta_Comeme++;
    } else if (this.Puerta_Muffin_Abierta == 4) {
      this.Puerta_Comeme++;
    } else if (this.Puerta_Muffin_Abierta == 6) {
      this.Puerta_Comeme++;
    }

    if (this.Puerta_Bebida_Abierta == 2) {
      this.Puerta_Bebeme++;
    } else if (this.Puerta_Bebida_Abierta == 4) {
      this.Puerta_Bebeme++;
    } else if (this.Puerta_Bebida_Abierta == 6) {
      this.Puerta_Bebeme++;
    }
  }


  obtenerPuertaComeme() {  // para poder utilizar estas variables en otra class
    return this.Puerta_Comeme;
  }

  obtenerPuertaBebeme() {
    return this.Puerta_Bebeme;
  }

  obtenerPuerta_Muffin_Abierta() {
    return  this.Puerta_Muffin_Abierta;
  }
  obtenerPuerta_Bebida_Abierta() {
    return  this.Puerta_Bebida_Abierta;
  }
  obtenerpuerta() {
    return this.puerta;
  }
  
}
