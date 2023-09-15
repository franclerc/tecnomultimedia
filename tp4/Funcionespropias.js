//FUNCIONES PROPIAS

function textportada(tam) {
  fill(0, 100, 255);
  textFont(Tipografia);
  textSize(tam);
}

function Boton(x1, x2, y1, y2, Posx, Posy, tam1, tam2) {
  if (mouseX > x1 && mouseX < x2 && mouseY  > y1 && mouseY < y2) {
    fill(0);
  } else {
    fill(50);
  }
  rect(Posx, Posy, tam1, tam2);
}

function Tiburon(Posx){
if (murio == true){
    image(img[6],Posx,500,70,70);
    }
}
