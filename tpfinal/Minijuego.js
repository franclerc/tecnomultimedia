class Minijuego {
  constructor() {
    this.puerta=[];
    this.pasarDeEstado = [];
    this.puerta_bebida=[];
    this.puerta_muffin=[];
    this.Puerta_Comeme= 0;
    this.Puerta_Bebeme= 0
      this.time = 0;
    this.letras = new Texto();
    this.f=13; // cantidad de puertas cerradas
    this.p=7;  // cantidad de puertas abiertas
    this.Puerta_Muffin_Abierta = 0;
    this.Puerta_Bebida_Abierta = 0;
    this.tipografia= loadFont('tipografias/IMPACTFUL.ttf');
    this.Fondodejuego = loadImage('imgjuego/Fondo.png');
    for ( let i = 0; i < this.f; i++ ) {
      this.puerta[i] = loadImage('imgjuego/puerta.png');
    }
    for ( let i = 0; i < this.p; i++ ) {
      this.puerta_muffin[i] = loadImage('imgjuego/puertamuffin.png');
    }
    for ( let i = 0; i < this.p; i++ ) {
      this.puerta_bebida[i] = loadImage('imgjuego/puertabebida.png');
    }
  }

  dibujar() {
    background(0);
    image(this.Fondodejuego, 0, 0);
    fill(160);
    textSize(20);
    textFont(this.tipografia);
    text('Puerta_Comeme='+this.Puerta_Comeme, 30, 580);
    text('Puerta_Bebeme='+this.Puerta_Bebeme, 30, 550);
    // puerta cerrada
    let distanciaX = 140;
    let distanciaY = 160;
    for (let fila = 0; fila < 3; fila++) {
      for (let columna = 0; columna < 4; columna++) {
        let x = 30 + columna * distanciaX;
        let y = 60 + fila * distanciaY;
        let indice = fila * 4 + columna;
        image(this.puerta[indice], x, y, 150, 150);
      }
    }
  }

  Abrirpuerta() {

    if (mouseX > 60 && mouseX < 117 && mouseY > 85 && mouseY < 185) { //1era fila
      this.puerta[0]=this.puerta_muffin[0];
      this.Puerta_Muffin_Abierta++;
    }
    if (mouseX > 200 && mouseX < 254 && mouseY > 88 && mouseY < 182) {
      this.puerta[1]=this.puerta_bebida[0];
      this.Puerta_Bebida_Abierta++;
    }
    if (mouseX > 350 && mouseX < 393 && mouseY > 88 && mouseY < 182) {
      this.puerta[2]=this.puerta_bebida[1];
      this.Puerta_Bebida_Abierta++;
    }
    if (mouseX > 480 && mouseX < 534 && mouseY > 88 && mouseY < 182) {
      this.puerta[3]=this.puerta_muffin[1];
      this.Puerta_Muffin_Abierta++;
    }
    if (mouseX > 60 && mouseX < 114 && mouseY > 248 && mouseY < 341) { //2da fila
      this.puerta[4]=this.puerta_bebida[2];
      this.Puerta_Bebida_Abierta++;
    }
    if (mouseX > 200 && mouseX < 250 && mouseY > 248 && mouseY < 343) {
      this.puerta[5]=this.puerta_muffin[2];
      this.Puerta_Muffin_Abierta++;
    }
    if (mouseX > 340 && mouseX < 397 && mouseY > 245 && mouseY < 345) {
      this.puerta[6]=this.puerta_bebida[3];
      this.Puerta_Bebida_Abierta++;
    }
    if (mouseX > 480 && mouseX < 537  && mouseY > 245 && mouseY < 345) { //
      this.puerta[7]=this.puerta_bebida[4];
      this.Puerta_Bebida_Abierta++;
    }
    if (mouseX > 60 && mouseX < 117  && mouseY >410 && mouseY < 497) {  // 3ra fila
      this.puerta[8]=this.puerta_muffin[3];
      this.Puerta_Muffin_Abierta++;
    }
    if (mouseX > 200 && mouseX < 258  && mouseY > 410 && mouseY < 497) {
      this.puerta[9]=this.puerta_bebida[5];
      this.Puerta_Bebida_Abierta++;
    }
    if (mouseX > 340 && mouseX < 397  && mouseY > 410 && mouseY < 497) {
      this.puerta[10]=this.puerta_muffin[4];
      this.Puerta_Muffin_Abierta++;
    }
    if (mouseX > 485 && mouseX < 532 && mouseY > 410 && mouseY < 497) {
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
      this.puerta = [...this.puerta.map(() => loadImage("imgjuego/puerta.png"))];
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

  PuertaCondicion() {
    text(this.time, 30, 50);
    if (this.Puerta_Comeme >= 3) {
      this.time++;
      if (this.time >= 100) {
        this.pasarDeEstado[0] = true;
        this.pasarDeEstado[2]= true;
        this.time=0;
      } else {
        this.pasarDeEstado[0] = false;
        this.pasarDeEstado[2]= false;
      }
    }
    if (this.Puerta_Bebeme >= 3) {
      this.time++;
      textSize(100);
      if (this.time >= 100) {
        this.pasarDeEstado[1] = true;
        this.pasarDeEstado[3] = true;
        this.time=0;
      } else {
        this.pasarDeEstado[1] = false;
        this.pasarDeEstado[3] = false;
      }
    }
    return this.pasarDeEstado;
  } // estado cerrado


  Reiniciarvariables() {
    this.Puerta_Comeme = 0;
    this.Puerta_Bebeme = 0;
    this.time = 0;
    this.Puerta_Muffin_Abierta = 0;
    this.Puerta_Bebida_Abierta = 0;
    this.pasarDeEstado = [];

    // Restaurar las imágenes de las puertas cerradas
    this.puerta = [...this.puerta.map(() => loadImage("imgjuego/puerta.png"))]
  }
}
