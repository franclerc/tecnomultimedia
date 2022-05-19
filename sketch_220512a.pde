int  Pantallas=6;
PImage [] images = new PImage [Pantallas];

int Bajo1;
int Bajo2;
int Bajo3;
int Bajo4;
int Bajo5;
PFont letra;
int tam1 = 70;
int tam2= 55;
int radio = tam1/2;
int dirX = 1;
int dirY=1;
int vel = 1;
int posY;
int posX;
boolean reboteX;

void setup () {
   size(800,450);
  
   images[1] = loadImage("Imagen12.jpg");
   images[2] = loadImage("Imagen05.jpg");
   images[3] = loadImage("Imagen11.jpg");
   images[4] = loadImage("Imagen09.jpg");
   images[5] = loadImage("Imagen04.jpg");
   
   Bajo1= -700;
   Bajo2= -600;
   Bajo3= -1100;
   Bajo4= -1300;
  
   posX = height/2;
   posY = width/2;
   reboteX = true;
}

void draw(){

      image(images[1],0,0);
      letra= loadFont("Arial-BoldMT-48.vlw");
      fill(255,0,0);
      
      textFont(letra);
      textSize(70);
      
      text("IT(Eso)",40,420);
     

  

  









if(mouseX >700 && mouseY <=50){
        background(0);
        image(images[2],0,0);
        letra= loadFont("ArialUnicodeMS-48.vlw");
        fill(255,100,0);
        
        textFont(letra);
        textSize(20);
        text( "Jaeden Martell  ...  Bill Denbrough\n Jeremy Ray Taylor ...  Ben Hanscom \n  Sofia Lilis  ...  Beverly Pantano \n Finn Wolfhard  ...  Richie Tozier \n Jacobs Chosen  ...  Mike Hanlon \n Jack Dylan Grazer  ...  Eddie Kaspbrak \n Wyatt Oleff  ...  Stanley Uris \n Bill Skarsgard  ...  Pennywise( El payaso) \n Nicolás Hamilton  ...  Henry Bowers \n jake sim  ...  Eructar Huggins  \n Logan Thompson  ...  Víctor Criss \n Owen Teague  ...  Patricio Hockstetter \n Jackson Robert Scott  ...  Georgie Denbrough \n Esteban Bogaert  ...  Sr. Pantano \n Stuart Hughes  ...  Oficial Bowers\n Geoffrey Pounset  ...  Zach Denbrough\n Pip Dwyer  ...  Sharon Denbrough \n Molly Atkinson  ...  Sonia Kaspbrak \nSteven williams  ...  Leroy Hanlon \n Elizabeth Saunders ...  Sra. Starret \n Megan Charpentier ...  Greta \n Joe Bostick ...  Sr. Keene \nAri Cohen ...  Rabino Uris \nAntonio Ulc...  Joe el carnicero \nJavier Botet...  Hobo \nkatie Lunman ...  Betty Ripsom \nCarter Musselman...  Niño sin cabeza \nTatum Lee   ...  Judit\n REPARTO PRINCIPAL (de menor a mayor importancia)",10,Bajo1);
        Bajo1++;
       
}
        
 

       

 if(mouseX <=100 && mouseY <=200){
        background(0);
        image(images[3],30,30);
       
        letra= loadFont("ArialUnicodeMS-48.vlw");
        fill(255,0,150);
        
        textFont(letra);
        textSize(20);
        text("Edie Inksetter   ...  Hostess  \n Martha Gibson  ...  Old Woman \n Kasie Rayner ...  Field Hockey Girl #1  \n Isabelle Nélisse  ...  Girl in Bathroom  \nJocelyn Mattka  ...  Another Girl  \nDonald Tripe  ...  Old Man in Car (as Don Tripe)  \nLiz Gordon  ...  Old Woman in Car  \nPaige Rosamond  ...  Dead Girl #1  \nNeil Crone  ...  Chief Borton  \nSonia Gascón  ...  Mrs. Ripsom  \nJanet Porter  ...  Stanley's Mother \nMemo Díaz-Capt  ...  4th of July Clown  \nChantal Vachon  ...  Girl in Magazine  \nRoberto Campanella  ...  Organ Player Clown  \nCyndy Day  ...  Pharmacy Cashier (uncredited)  \nDavid Katzenberg  ...  El Aparato (uncredited)  \nBobby Leigh  ...  Jonathan (uncredited)  \nAimee Lenihan  ...  Student (uncredited)  \nKylie Lenihan  ...  Student (uncredited)  \nKate Moyer  ...  Esther (uncredited)  \nSherry Nelson  ...  Woman on Street (uncredited)  \nJimmy Star  ...  Man In Car (uncredited)  \nZac Tiessen  ...  Student (uncredited)  \nKelly Van Der Burg  ...  Abigail (uncredited)  \n Becky Wolf  ...  Girl on Street (uncredited)\n REPARTO SECUNDARIO :  ",10,Bajo2);
        Bajo2++;
        
        

}        
     if(mouseX <=20 && mouseY >=400){
        background(0);
        image(images[4],0,0);
        letra= loadFont("ArialUnicodeMS-48.vlw");
         fill(255,50,70);
        
        textFont(letra);
        textSize(20);
        text("DIRECCIÒN: Andrés Muschietti \n PRODUCIDO POR :\n  Richard Brener  ...  Executive ProducerDoug Davison  ...  Executive Producer \nToby Emmerich  ...  Executive Producer \nMarty P. Ewing  ...  Executive Producer \nSeth Grahame-Smith  ...  Producer (produced by) (p.g.a.) \nWalter Hamada  ...  Executive Roducer \nDavid Katzenberg  ...  Producer (produced by) (p.g.a.) \nNiija Kuykendall  ...  Executive Producer \nRoy Lee  ...  Producer (produced by) \nDan Lin  ...  Producer (produced by) \nBarbara Muschietti  ...  Producer (produced by) (p.g.a.) \nDave Neustadter  ...  Executive Producer \nJon Silk  ...  Executive Producer \n DEPARTAMENTO DE SONIDO:  \n Sylvain Arseneault  ...  mezclador de sonido \nRob Beal  ...  mezclador de sonido: segunda unidad (como Robert Beal) \nscott cannizzaro  ...  mezclador de direcciones \nJoe Cappelletti  ...  directora del grupo adr \nSteve Dalcin  ...  utilidad de sonido\nVíctor Ray Ennis  ...  editor de sonido supevisor\nChris Fenske  ...  editor de efectos de sonido\nPaul Finchbaugh  ...  asistente de edición de sonido\nCañada Gauthier  ...  mezclador de sonido\nPablo Hackner  ...  diseñador de sonido\nJamie Hardt  ...  editor de efectos de sonido\nJames B Howe  ...  mezclador de foley (como James B Howe)\nChris Jenkins  ...  mezclador de regrabación\nKenneth L Johnson  ...  editor de efectos de sonido (como Ken Johnson)\nVic Kaspar  ...  mezclador de direcciones\nMiguel kearns  ...  operador de microfono\nMichael Keller  ...  mezclador de regrabación\nAlbañil kopeikin  ...  editor de foley\nMaza Matiosian  ...  editor de foley\nJason Mcfarling  ...  cable\nLucas McLean  ...  operador de pluma: segunda unidad\nDiez Molinos  ...  operador de pluma: segunda unidad\nThomas J. O'Connell  ...  mezclador de direcciones\nValentin Pricop  ...  mezclador de sonido: segunda unidad\nMarca Purcell  ...  técnico de mezcla\nJesi Ruppel  ...  artista de foley\nJoseph T. Sabella  ...  foley artist (as Joe Sabella)\nErik Southey  ...  cable\nSteve Suizo  ...  operador de microfono\nBernardo Weiser  ...  editor de diálogo\nPat Cassin  ...  operador de boom (sin acreditar)\nEvan J Haley  ...  diseñador de sonido: D-Box Technologies (sin acreditar)", 10,Bajo3);
        Bajo3++;
    
      
}
      if(mouseX>700 && mouseY>400 ){
        background(0);
        image(images[5],0,0);
        letra= loadFont("ArialUnicodeMS-48.vlw");
        fill(255,200,170);
        
        textFont(letra);
        textSize(20);
        text("MÙSICA: Benjamin Wallfisch \n SONIDO: Paul Hackner\n EDICION DE PELICULA: Jason Ballantine\n  Cinematografìa : Chung Hoon Chung \n Director de fotografía \n DEPARTAMENTO DE MÙSICA : \nNico Abondolo  ...  músico: bajo \nAntonio Andrade  ...  Programador de sintetizadores \nÀrbol de kim  ...  Departamento de Música \nJacob braun  ...  músico: violonchelo \nRob Brophy  ...  músico: viola \nBelinda  ...  concertino \nEric Byers  ...  músico: violonchelo \nCeleste Chada  ...  coordinador de puntuación \nVicente Cirilli  ...  Operador de herramientas profesionales \nMeredith Crawford  ...  músico: viola \nMarcia Dickstein  ...  músico: arpa \nJessica Dolinger  ...  Liquidación de música \nAndres Patitos  ...  músico: viola \nE. Duke-Kirkpatrick  ...  músico: violonchelo \nVanessa Freebairn-smith  ...  músico: violonchelo \nBecas Mauricio  ...  músico: violonchelo \nDylan s Hart  ...  músico: corno francés \nHillary Holmes  ...  coordinador de musica \nLuanne Homzy  ...  músico: violín  \nJoel Iwataki  ...  Grabadora de partituras y mezclador \nBenjamin Jacobson  ...  músico: violín \nMichael Kaufmann  ...  músico: violonchelo \nDavid J. Kristal  ...  orquestador (como David Krystal) \n kevin kumar  ...  músico: violín \nTimoteo Landauer  ...  músico: violonchelo \nPunto lee  ...  músico: violín \nAlex Lu  ...  programador de sintetizadores \nMaya Magub  ...  músico: violín \nlarry Mah  ...  operador de herramientas profesionales \nLucia Micarelli  ...  músico: violín \nJonathan Moerschel  ...  músico: viola \nJessica Perlaman  ...  músico: oboe \nLise Richardson  ...  editor de música (como Lise Richardson) \nMax Sandler  ...  programador de sintetizadores\n Dana Sano  ...  supervisor musical \ncristobal Todavía  ...  músico: trompeta \nEvgeny Tonka  ...  músico: violonchelo \nNate Underkuffler  ...  asistente de edición musical \nSimone Vitucci  ...  músico: violonchelo \nBooker Blanco  ...  preparación musical \nTim williams  ...  conductor \nSean Barrett  ...  asistente de orquestador (sin acreditar) \nNicholas J. Cazares  ...  preparación musical (sin acreditar) \nBenjamin hoff  ...  asistente de orquestador (sin acreditar) \nAlfredo Pascual  ...  asistente de mezcla de partituras (sin acreditar) \nBrett Pierce  ...  editor de música adicional (sin acreditar) \nJaspe Randall  ...  contratista vocal (sin acreditar) \nJéssica Rau  ...  cantante: grupo pequeño (sin acreditar) \nJamie Thierman  ...  asistente de orquestador (sin acreditar) ",10, Bajo4);
        Bajo4++;
      }
       
      
        
   
  
       
       
       
   ellipse(posX, posY, tam2, tam1);
  if (reboteX) {
    if (posX+tam1/2 > width || posX-tam2/2 < 0) {
      dirX = (dirX * -1);
    }
    posX = posX + (dirX * vel);
  } else {
    if (posY+tam1/2 > height || posY-tam2/2 < 0) {
      dirY = (dirY * -1);
    }
    posY = posY + (dirY * vel);
  }
}




void mouseClicked() {
  ellipse(width/2, posY, tam2, tam1);
  if(posY+radio > height || posY-radio < 0){
    dirY = (dirY * -1);
  }
  posY = posY + (dirY * vel);
  if(dist(width/2, posY, mouseX, mouseY) < radio){
    fill(0,255,0);
  }else{
    fill(0);
  }
  
}

void keyPressed(){
  reboteX = !reboteX;      
  
   
   


}
