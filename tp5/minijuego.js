class minijuego {
  //Constructor
  constructor() {
    this.estado= 0;
    this.time=0;
    this.tipografia= loadFont('data/IMPACTFUL.ttf');
    this.Fondo= loadImage("data/Fondo.png");
    this.CaminoUno= loadImage("data/Primero.png");
    this.CaminoDos= loadImage("data/Segundo.png");
    this.puerta= new Puertas();
  }

  //dibujar
  dibujar() {
    if (this.estado == '0') {                                                   // PORTADA
      push();
      background(20);
      if (mouseX > 200 && mouseX < 400 && mouseY > 250 && mouseY < 300) {//boton
        fill(70, 129, 78);
      } else {
        fill(105, 183, 116);
      }
      rect(200, 250, 200, 50);
      stroke(0);
      textSize(45);
      textFont(this.tipografia);
      fill(191, 54, 83);
      text("Jugar", 220, 290);
      pop();
    }

    if (this.estado =='1') {                                                    // JUEGO
      image(this.Fondo, 0, 0);
      this.puerta.dibujar();
      fill(160);
      textSize(20);
      textFont(this.tipografia);
      text(this.time, 30, 30);
      const Puerta_Comeme = this.puerta.obtenerPuertaComeme();
      const Puerta_Bebeme = this.puerta.obtenerPuertaBebeme();
      if (Puerta_Comeme >= 3) {
        this.time++;
        if (this.time >= 150) {
          this.estado= '2';
          this.time=0;
         
        }
      }
      if (Puerta_Bebeme >= 3) {
        this.time++;
        if (this.time >= 150) {
          this.estado= '3';
          this.time=0;
         
        }
      }
    }

    if (this.estado == '2') {
      push();
      background(0);
      image(this.CaminoUno, 0, 0);

      if (mouseX > 350 && mouseX < 550 && mouseY > 520 && mouseY < 570) {//boton
        fill(70, 129, 78);
      } else {
        fill(105, 183, 116);
      }
      rect(350, 510, 200, 50);
      stroke(0);
      textFont(this.tipografia);
      textSize(45);
      fill(191, 54, 83);
      text("Volver", 370, 550);
      textSize(60);
      fill(200);
      text ("Alicia,\nSe achica..", 10, 100);
      pop();
    }

    if (this.estado == '3') {
      push();
      background(200);
      image(this.CaminoDos, 0, 0);
      if (mouseX > 350 && mouseX < 550 && mouseY > 520 && mouseY < 570) {//boton
        fill(70, 129, 78);
      } else {
        fill(105, 183, 116);
      }
      rect(350, 510, 200, 50);
      stroke(0);
      textFont(this.tipografia);
      textSize(45);
      fill(191, 54, 83);
      text("Volver", 370, 550);
      textSize(60);
      fill(200);
      text ("Alicia,\nSe agranda..", 10, 300);
      pop();
    }
  }

  HacerClickMenu() {

    if (this.estado == '0') {// pasar a otro estado...
      if (mouseX > 200 && mouseX < 400 && mouseY > 250 && mouseY < 300) {

        this.estado='1';
      }
    }

    if (this.estado == '2' || this.estado == '3') {// pasar a otro estado...
      if (mouseX > 350 && mouseX < 550 && mouseY > 520 && mouseY < 570) {
        this.estado='0';
        this.Reiniciarvariables();
        
      }
    }
  }

  Abrirpuerta() {
    this.puerta.Abrirpuerta();
  }


  Reiniciarvariables() {
  const nuevaPuerta = new Puertas();
  // Reiniciar variables del juego en la nueva instancia
  nuevaPuerta.Puerta_Muffin_Abierta = 0;
  nuevaPuerta.Puerta_Bebida_Abierta = 0;
  nuevaPuerta.Puerta_Comeme = 0;
  nuevaPuerta.Puerta_Bebeme = 0;

  // Restaurar las imágenes de las puertas cerradas en la nueva instancia
  nuevaPuerta.puerta = [...nuevaPuerta.puerta.map(() => loadImage("data/puerta.png"))];

  // Asignar la nueva instancia a la propiedad puerta de esta clase
  this.puerta = nuevaPuerta;
}
}
