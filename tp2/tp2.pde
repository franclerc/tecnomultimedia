// video pedido:
// https://www.youtube.com/watch?v=A5nN5bprC60

PImage ilucionOptica;
int Posx, Posy, tam;
float Maxdistancia;


void setup(){

size(800,400);
ilucionOptica = loadImage("ilucionoptica.jpg");
tam = 30;
Posx= 530;
Posy = 130;
smooth();
Maxdistancia = dist(0,0, width, height); 

}


void draw(){

  background(0);
 

    cuadrilla(390,-9);
    Cuadradoscentrales();
    Rombos(390,10, color(0));
    LineasBlancas1(386,23);
    LineasBlancas2(526,127);
    image(ilucionOptica,0,0);
     
  }
