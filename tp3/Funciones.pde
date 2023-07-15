void confgtext (int tam, color coletra) {  //con parametros sin return
  textFont(miFuente2);
  textSize( tam );
  textAlign( LEFT, CENTER );
  fill( coletra );
}

void Boton(int x, int y, int r, int Posx, int Posy, int tam1, int tam2) {  //con parametros con return
  if ( dist(mouseX, mouseY, x, y)<=r ) {
    fill(134);
  } else {
    fill(60);
  }
  ellipse(Posx, Posy, tam1, tam2);
}

void Textos() {
  // textos de las pantalla 1
  texto[1]= "Nuestra historia comienza con la \nprotagonista, Alicia, sentada junto \na su hermana, disfrutando \ndel aire libre junto al Rio.";
  texto[2]= "De repente un conejo,\nvestido y parlante\nllama su atención.";
  texto[3]= "Alicia lo vio entrar en\nuna madriguera cerca del bosque.";
  texto[4]= "SEGUIRLO";
  // textos de las pantalla 2
  texto[5]= "Cayo por un tunel hasta una habitacion llena\n   de puertas, todas cerradas, solo abria la mas \n   pequeña y Alicia no cabia por ella.";
  texto[6]= "El el centro de la habitacion se encontraban\n   una botella y un muffin invitando a que te\n   sirvas de alguno de ellos.";
  texto[7]= "COMEME";
  texto[8]= "BEBEME";
  // textos Pantalla 3
  texto[9]= "Crecio hasta el techo,\ny al no saber que hacer,\nAlicia lloro e inundo la\nhabitacion con sus lagrimas.";
  texto[10]="El conejo paso navegando,\ny se le cayó el abanico,\nella lo tomó y se abanicó\nDisminuyó su tamaño y cayó al agua,\nque ahora era un inmenso mar....";
  texto[11]="NADAR";
  texto[12]= "A LA ORILLA";
  // textos Pnatalla 4
  texto[13]="Llego a una playa.\nDonde vio al conejo\ncorrer con prisa hacia el bosque...";
  texto[14]= "SEGUIRLO";
  //textos Pantalla5
  texto[15]= "Se sumergio en el bosque,\ny de golpe se hizo de noche.";
  texto[16]= "Perdida,\nse encotro de frente\ncon un sendero dividido en dos.";
  texto[17]= "Un gato se hizo presente de la nada,\ncon una sonrisa de oreja a oreja,\ny le plantea dos caminos posibles,\nantes de desaparecer.";
  texto[18]= "SOMBRERERO";
  texto[19]= "LIEBRE";
  //textos Pantalla 6
  texto[20]= "Llego a la casa del sombrero\npero...";
  texto[21]= "El otro\ncamino";
  // textos Pantalla 7
  texto[23]= "El sector de noche termino,\nvolvió a ser de día.";
  texto[24]= "Se encontró a la liebre junto\ncon el somberero tomando el tè";
  texto[25]= "Pero no le parecio\nque esten muy cuerdos..";
  texto[26]= "QUEDARSE";
  texto[27]= "IRSE";
  //textos Pantalla 8 : 1er final
  texto[28]= "El tè que tomò,\nla hizo sentirse extraña.";
  texto[29]= "Y se olvido por completo de su realidad.\n Se quedo festejando junto con sus\nnuevos amigos todos los no cumpleaños,\npor siempre..";
  texto[30]= "FIN";
  // textos Pantalla 9
  texto[31]= "La noche volvio a surgir de repente..";
  texto[32]= "Una sonrisita de fondo,\nsimilar a la del gato \nse escucha en el ambiente";
  texto[33]= "Una puerta se materializa\nde la nada, sobre un árbol";
  texto[34]= "INGRESAR";
  // Textos Pantalla 10
  texto[35]= "Al ingresar por la abertura,\n       se encontro nuevamente\n              en la habitacion de las puertas.";
  // Textos Pantalla 11
  texto[36]= "Su tamaño disminuyo grotescamente";
  texto[37]= "Quedo del tamaño perfecto\n    para ingresar por la ex pequeña puerta.";
  texto[38]= "INGRESAR";
  // Textos Pantalla 12
  texto[39]= "Cuando pasó por la puerta, se encontro a una multitud";
  texto[40]= "La reina,\njugaba al Croquet, y ordenaba\ncortar cabeza a quien le ganara.";
  texto[41]= "El conejo estaba junto a la reina,\nparecia querer escapar de allí.";
  texto[42]= "El juego duro mientras hubo\ncontrincantes.";// no se usa
  texto[43]= "Despues del juego se iniciaria un juicio\ny la invintaron a Alicia como testigo,\naunque no sabia nada del tema";
  texto[44]= "lala";// no se usa
  texto[45]= "jUICIO";
  // Textos Pnatalla 13
  texto[46]= "INTERVENIR";
  texto[47]= "La reina acusaba a unas de sus cartas,\nde haberse comido su tartaleta.";
  texto[48]= "Subieron algunos testigos,\n y dejaron evidencias encontra de la jota";
  // Textos Pnatalla 14
  texto[49]= "La reina enfurecio con\nAlicia, por defender\na la jota.";
  texto[50]= "Dio la orden y todas las \n  soldados-cartas se lanzaron\n  hacia ella.";// no se usa
  texto[51]= "DESPERTAR";
  texto[52]= "NO ES SUEÑO";
  // Textos Pantalla 15
  texto[53]= "Alicia se despierta nuevamente junto al Rio.";
  texto[54]= "Y le comienza a relatar su aventura a su hermana.";
  texto[55]= "FIN";
  // Textos Pantalla 16
  texto[56]= "Aqui yase el alma en pena de la pobre Alicia";
  texto[57]= "FIN";
  //texto creditos 17
  texto[58]= "VOLVER";
}
