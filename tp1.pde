
String Estado; 

// variables para burbujas 1
int Posx1, Posy1, Posx2, Posy2,Posx3, Posy3,Posx4, Posy4,Posx5, Posy5,Posx6, Posy6, Posx7,Posy7,Posx8,Posy8, Posx9, Posy9, Posx10, Posy10,Posx11, Posy11,Posx12, Posy12,Posx13, Posy13,Posx14, Posy14, Posx15,Posy15,Posx16,Posy16;

// variables para burbujas 2
int Posx17, Posy17,Posx18,Posy18,Posx19,Posy19,Posx20,Posy20;

// variables para movieminto del titulo en pantalla principal
int Posxtit1,Posxtit2,Posxtit3, Posxbotontit;

//tiempo entre pantallas
int time;

int velocidad = 1;

// Cargar fuentes
PFont fuente, fuente1, fuente2,fuente3, fuente4;

// cargar Imagenes
PImage Imagen1, Imagen2,Imagen3, Imagen4, Imagen5,Imagen6;
PImage Oceanofrio, Oceanocalido;
PImage Pajaros, Pajaros2;
PImage Signos;

// texto pantalla principal
String Titulo;
String subTitulo;
String Boton1; 

// texto 1er pantalla
String texto1erpantalla ; 
String texto1erpantalla2; 
String texto1erpantalla1;

//variable 1er pantalla
int Posiciony1 , Posiciony2, Posiciony3,Posicionx, Posicionx1;
int Posyimagen1,Posximagen1,Posyimagen2,Posximagen2;

//texto 2da pantalla

String texto2dapantalla1;//
String texto2dapantalla2;
String texto2dapantalla3;
String texto2dapantalla4;


//variables de movimiento de pajaros 
int Posxpajaro1, Posypajaro1,Posxpajaro2, Posypajaro2;

// movimineto del texto

int Postextx1, Postexty1,Postextx2, Postexty2,Postextx3, Postexty3;
int Postextx4, Postexty4,Postextx5, Postexty5, Postextx6, Postexty6;
int Postextx7, Postexty7;


// texto 3er pantalla

String texto3rapantalla1; // 
String texto3rapantalla2; // 
String texto3rapantalla3; // 
String texto3rapantalla4;

int Posnum,Posnum2,Posnum3,Posnum4,Posnum5,Posnum6,Posnum7,Posnum8,Posnum9,Posnum10,Posnum11,Posnum12 ;

// variables de moviviento para esta pantalla

int movertextoenx1, movertextoeny1, movertextoenx2, movertextoeny2, movertextoenx3, movertextoeny3, movertextoenx4, movertextoeny4;

// texto 4ta pantalla 
String texto4tapantalla1;
String texto4tapantalla2; 
String texto4tapantalla3;

// variables de moviviento para esta pantalla

int movtextx1, movtexty1,  movtextx2, movtexty2, movtextx3,movtexty3; 
int movimgy1,movimgy2,movimgy3,movimgy4,movimgy5;
int movimgx1,movimgx2,movimgx3,movimgx4,movimgx5;
PImage Ave, Peces, Lobomarino, Pinguinos, Tiburon ;


// texto  5ta pantalla
String texto5tapantalla1;//
String texto5tapantalla2;
String texto5tapantalla3;
String texto5tapantalla4;
String texto5tapantalla5;
String texto5tapantalla6;
String texto5tapantalla7;



// variables de moviviento para esta pantalla

int textx, texty;
int moversignosx;
boolean Izquierda;
int vel =1;

//texto 6ta pantalla
String texto6tapantalla1;
String texto6tapantalla2; // termina hacer boto de reinicio. 
PImage  Imagen7;
// variables de moviviento para esta pantalla
PImage orca1,orca2,orca3,orca4, orca5,orca6,orca7;
int orcax1, orcay1,orcax2, orcay2,orcax3, orcay3,orcax4, orcay4;
int orcax5, orcay5,orcax6, orcay6,orcax7, orcay7;
int movimientoenx1,movimientoeny1, movimientoenx2,movimientoeny2;


void setup(){

size ( 640,480);


Titulo = "Adivina.. adivinador";
subTitulo = "¿A què animal marino \n nos referimos?";
Boton1 = "Inicia"; 

texto1erpantalla = "Pueden encontrararse\npor todos los Oceanos\ndel mundo "; 
texto1erpantalla2 = "Y los calidos"; 
texto1erpantalla1 ="En los frios";

texto2dapantalla1= "Son mamiferos";//
texto2dapantalla2= "Vivíparos";
texto2dapantalla3= "Vertebrados";
 texto2dapantalla4= "Carnivoros";
 
texto3rapantalla1= "Sabias que?...."; //
texto3rapantalla2= "Son los mamiferos marinos mas rapidos\n  del mundo";
texto3rapantalla3= "Ademas.."; 
texto3rapantalla4= "Viven en familia hasta edad avanzada";

texto4tapantalla1= "Son seres muy \n sociables, inteligentes y curiosos";
texto4tapantalla2= "Son estrategas\na la hora de Cazan a sus presas";
texto4tapantalla3= "Su alimento varia entre.. ";

texto5tapantalla1= "Enronces..\n¿Qué animal\n te parece que es?";
texto5tapantalla2= "Megalodon";
texto5tapantalla3= "Orca";
texto5tapantalla4=  "Tiburon ballena";
texto5tapantalla6= "Correcto";
texto5tapantalla5= "Incorrecto";
texto5tapantalla7=  "Inconrrecto";




texto6tapantalla1= "Las Orcas";
texto6tapantalla2= "Maravillosas criaturas..\n¿No les parece? ;D";


Estado = "menu";



//variables de posiciones de las burbujas
  Posx1=10;
  Posy1=-10;
  Posx2 =60;
  Posy2= 100;
  Posx3= 500;
  Posy3= 300;
  Posx4 = 120;
  Posy4= 470;
  Posx5= 170;
  Posy5 = 850;
  Posx6 = 200;
  Posy6= 650;
  
  Posx7=280;
  Posy7=670;
  Posx8 =330;
  Posy8= 180;
  Posx9= 390;
  Posy9= 910;
  Posx10 = 430;
  Posy10= 280;
  Posx11= 480;
  Posy11 = 150;
  Posx12 = 450;
  Posy12= 550;
    Posx13=10;
  Posy13=100;
  Posx14 =160;
  Posy14= 1200;
  Posx15= 270;
  Posy15= 300;
  Posx16 = 400;
  Posy16= 900;
  
  
   Posx17=450;
  Posy17 =80;
  Posx18= 200;
  Posy18= 270;
  Posx19= 10;
  Posy19 = 40;
  Posx20= 340;
  Posy20= 150;
 
  
    // varibles para posicion del texto del titulo
  Posxtit1 = -100;
  Posxtit2= 150;
  Posxtit3=-430;
  Posxbotontit= -20;
  
  // variables 1er pantalla
  
  Posiciony1 = 100;
  Posiciony2 = 100;
  Posiciony3=150;
  Posicionx= -200; // texto frio
  Posicionx1 = 680;// texto calidos
 // Posicionimagen1= -1500; // imagen oceano frio
  
  Posyimagen1=110;
  Posyimagen2=170;
  Posximagen1= 80;
  Posximagen2= 440;


// variables 2da pantalla 

Postextx1 = -270;
Postexty1 = 260;
Postextx2 = -290;
Postexty2 = 310;
Postextx3= -310;
Postexty3 = 360;
Postextx4= -330;
Postexty4 =410;


Posxpajaro1= 0;
Posypajaro1= 100;
 Posxpajaro2= 700;
  Posypajaro2= 50;


// variables 3ra pantalla 

movertextoenx1 = 700;
movertextoeny1 = 100;
movertextoenx2 = -600;
movertextoeny2 = 150;
movertextoenx3 = 700;
movertextoeny3 = 320;
movertextoenx4 = -600;
movertextoeny4 =  370;

Posnum = -10;
Posnum2 = -90;
Posnum3 = -300;
Posnum4 = -150;
Posnum = -200;
Posnum = 100;
Posnum = -288;
Posnum = -77;
Posnum = -9;
Posnum = -40;
Posnum = -120;
Posnum = -241;


// variables pantalla 4

movtextx1 = 50;
movtexty1= 500;
movtextx2 = 50;
movtexty2= 600;
movtextx3= 50;
movtexty3= 700;


movimgy1 = 500;
movimgy2= 520;
movimgy3= 540;
movimgy4= 560;
movimgy5= 580;
movimgx1= 0;
movimgx2= 120;
movimgx3= 250;
movimgx4= 360;
movimgx5= 470;


// variables pantalla 5

 moversignosx = -50;
 
 textx=100;
 texty=-50;
 
 
 // variables Pantalla 6

 
 orcax1 = 20;
 orcay1 = 500;
 orcax2 = 150;
 orcay2 = -600;
 orcax3 = 300;
 orcay3 = 700;
 orcax4 = 400;
 orcay4 = -100;
 
  orcax5 = -200;
  orcay5= 300;
  orcax6 = 750;
  orcay6 = 20;
  orcax7 = 80;
  orcay7= -150;
 
 
 
 
 movimientoenx1=10;
 movimientoeny1= 80;
 movimientoenx2=-100;
 movimientoeny2= 400;
 


  // Imagenes cargadas
  Imagen1 = loadImage("Imagen1.jpg"); // Pantalla principal
  Imagen2 = loadImage("Imagen2.jpg");// priemr pantalla
  Imagen3 = loadImage("Imagen3.jpg"); // 2da pantalla
  Oceanofrio = loadImage("Oceanofrio.jpg"); 
  Oceanocalido = loadImage("Oceanocalido.jpg"); 
   Imagen4 = loadImage("Imagen4.jpg"); // // tercer pantalla
   Pajaros= loadImage("Pajaros.png");
    Pajaros2= loadImage("Pajaros2.png");
    Imagen5= loadImage("Imagen6.jpg");
    Ave= loadImage("Ave.jpg");
    Peces= loadImage("Peces.jpg");
    Pinguinos= loadImage("Pinguinos.jpg");
    Lobomarino= loadImage("Lobomarino.jpg");
    Tiburon= loadImage("Tiburon.jpg");
  Imagen6 = loadImage("Imagen5.jpg"); // 4ta pantalla
  Signos= loadImage("Signos.png");
  Imagen7= loadImage("Imagen7.png");
  orca1=loadImage("Orca1.png");
    orca2= loadImage("Orca2.png");
      orca3= loadImage("Orca3.png");
        orca4= loadImage("Orca4.png");
        orca5= loadImage("Orca5.png");
           orca6= loadImage("Orca6.png");
          orca7= loadImage("Orca7.png");
        
  

 
  // Fuentes cargadas
  fuente= loadFont("ErasITC-Demi-48.vlw");
  fuente1= loadFont("Microsoft-Yi-Baiti-48.vlw"); // subtitulo
  fuente2= loadFont("FranklinGothic-Demi-48.vlw"); // general
  fuente3= loadFont("SnapITC-Regular-48.vlw"); // titulo
  fuente4= loadFont("Bauhaus93-48.vlw");
  

  
 
  
  // variable del tiempo
 time= 0;


  

}

void draw (){
  
  
  

 if ( Estado.equals("menu") ) {
         background(0);
         image(Imagen1,0,0);
   
  
   // moviemiento del titulo.
   
   
   if (Posxtit1 < 10){
          Posxtit1++;
        
           }
     
    if( Posxtit2 >45){
          Posxtit2--;
       
         }
         
         noStroke();
         fill(200,50);
         ellipse(Posx1,Posy1,30,35);
     
    
       Posy1--;
         
     
     
     if (Posy1== 50){
      Posx1= 130;
      Posy1= 470;
     
     }
     
         noStroke();
         fill(200,50);
         ellipse(Posx2,Posy2,30,35);
    
      
        Posy2--;
          
     if (Posy2== 20){
      Posx2= 40;
      Posy2= 250;
     
     }
     
         noStroke();
         fill(200,50);
         ellipse(Posx3,Posy3,30,35);
      
         Posy3--;
         if ( Posy3 == 115){
            Posx3= 290;
           Posy3= 590;
         
         }
         
         
         noStroke();
         fill(200,50);
         ellipse(Posx4,Posy4,30,35);
      
         Posy4--;
         if ( Posy4 == 150){
            Posx4= 450;
           Posy4= 300;
         
         }
         
         noStroke();
         fill(200,50);
         ellipse(Posx5,Posy5,30,35);
      
         Posy5--;
         if ( Posy5 == 113){
            Posx5= 90;
           Posy5= 330;
         
         }
         
         
         noStroke();
         fill(200,50);
         ellipse(Posx6,Posy6,30,35);
      
         Posy6--;
         if ( Posy6 == 120){
            Posx6= 410;
           Posy6= 400;
         
         }
         
         
          noStroke();
         fill(200,50);
         ellipse(Posx7,Posy7,30,35);
      
         Posy7--;
         if ( Posy7 == 126){
            Posx7= 210;
           Posy7= 330;
         
         }
            noStroke();
         fill(200,50);
         ellipse(Posx8,Posy8,30,35);
      
         Posy8--;
         if ( Posy8 == 5){
            Posx8= 185;
           Posy8= 180;
         }


           noStroke();
         fill(200,50);
         ellipse(Posx9,Posy9,30,35);
      
         Posy9--;
         if ( Posy9 == 1){
            Posx9= 440;
           Posy9= 690;
         }
           
              noStroke();
         fill(200,50);
         ellipse(Posx10,Posy10,30,35);
      
         Posy10--;
         if ( Posy10 == 90){
            Posx10= 370;
           Posy10= 340;
           
         }
         
         
                   noStroke();
         fill(200,50);
         ellipse(Posx11,Posy11,30,35);
      
         Posy11--;
         if ( Posy11 == 110){
            Posx11= 470;
           Posy11= 300;
           
         }
           
                     noStroke();
         fill(200,50);
         ellipse(Posx12,Posy12,30,35);
      
         Posy12--;
         if ( Posy12 == -30){
            Posx12= 475;
           Posy12= 200;
           
         }
         
                   noStroke();
         fill(200,50);
         ellipse(Posx13,Posy13,30,35);
      
         Posy13--;
         if ( Posy13 == -4){
            Posx13= 370;
           Posy13= 300;
           
         }
         
                   noStroke();
         fill(200,50);
         ellipse(Posx14,Posy14,30,35);
      
         Posy14--;
         if ( Posy14 == 138){
            Posx14= 440;
           Posy14= 400;
           
         }
         
                   noStroke();
         fill(200,50);
         ellipse(Posx15,Posy15,30,35);
      
         Posy15--;
         if ( Posy15 == 260){
            Posx15= 170;
           Posy15= 1000;
           
         }
         
                   noStroke();
         fill(200,50);
         ellipse(Posx16,Posy16,30,35);
      
         Posy16--;
     
         
                           noStroke();
         fill(200,50);
         ellipse(Posx17,Posy17,30,35);
      
         Posy17--;
         if ( Posy17 == 125){
            Posx16= 140;
           Posy16= 300;
           
         }
         
                           noStroke();
         fill(200,50);
         ellipse(Posx18,Posy18,30,35);
      
         Posy18--;
         if ( Posy18 == 78){
            Posx16= 465;
           Posy16= 200;
           
         }
         
                           noStroke();
         fill(200,50);
         ellipse(Posx19,Posy19,30,35);
      
         Posy19--;
         if ( Posy16 == 154){
            Posx16= 140;
           Posy16= 100;
           
         }
         
                           noStroke();
         fill(200,50);
         ellipse(Posx20,Posy20,30,35);
      
         Posy20--;
         if ( Posy20 == 47){
            Posx20= 400;
           Posy20= 390;
           
         }
         
  
           
           
//titulo
 
  fill(20,20,120);//
  textSize(40);
  textFont(fuente3);

  text( Titulo ,Posxtit1,200);
  
  // subtitulo  
  
   fill(40,20,255);// 
  textFont(fuente1);
  textSize(42);
  text( subTitulo ,Posxtit2,250);
  
  
  //dibujar boton 1

   if (mouseX > 99 && mouseX < 201 && mouseY > 339 && mouseY < 366) {
   fill(20);

}   else {
      fill(50);
}
   
   stroke(40);
   rect(Posxbotontit,340,100,25);

if( Posxbotontit < 100){
Posxbotontit++;}

textFont(fuente2); // boton 1
   fill(23,171,250);
   textSize(20);
   text(Boton1,Posxbotontit+25,360);
    
 

 
       
 
 
   
 
 
 
 } else if ( Estado.equals("Pantalla1") ) {
    background(0);
    image(Imagen2,0,0);
     
       // texto  
  
   //fill(0);// 
   fill(1,20,27);
  textFont(fuente2);
  textSize(45);
  text( texto1erpantalla,100,Posiciony1);
  
  if ( Posiciony1 <360){
  Posiciony1++;
  
  }
  
  
  // imagenes
    if (time >=550){
    
      image( Oceanocalido, 0,150);
   }
   
   
   
      if (time >=600){
    image( Oceanofrio, 150,150);
   }
   
     if (time >=640){
    image( Oceanocalido, 300,150);
    image( Oceanofrio, 0,0);
   }
   
         if (time >=650){
    image( Oceanofrio, 450,150);
   }
   
   if (time >=630){
       image( Oceanofrio, 150,300);
      }
   
      if (time >=645){
       image( Oceanofrio, 0,300);
      }
      
        if (time >=590){
       image( Oceanocalido, 0,450);
      }
      
         if (time >=662){
       image( Oceanofrio, 600,0);
      }
     
        if (time >=615){
    image( Oceanocalido, 150,0);
   }
   
          if (time >=602){
    image( Oceanocalido, 600,150);
   }
   
           if (time >=580){
    image( Oceanofrio, 300,0);
   }
      
           if (time >=666){
    image( Oceanocalido, 450,0);
   }
   
  
           if (time >=670){
    image( Oceanocalido, 300,300);
   }
   
              if (time >=599){
    image( Oceanofrio, 450,300);
   }
   
               if (time >=622){
    image( Oceanocalido, 600,300);
   }
   
   
       if (time >=705){
       image( Oceanofrio, 150,450);
      }
      
      
              if (time >=690){
    image( Oceanocalido, 300,450);
   }


      if (time >=721){
       image( Oceanofrio, 450,450);
      }
      
      
         
        if (time >=740){
    image( Oceanocalido, 600,450);
   }

    if ( Posicionx == 50){
        image( Oceanofrio, Posximagen1,Posyimagen1);
        }
  
  if ( Posicionx1 == 400){
        image( Oceanocalido, Posximagen2,Posyimagen2);
      }
      
  
  
// texto Oceano frio e imagen 1
        
   fill(15,18,77);// 
  textFont(fuente4);
  textSize(40);
  text( texto1erpantalla1,Posicionx-20,Posiciony2);
  
  
  if(Posiciony1 == 360){
      if ( Posicionx < 50){
                Posicionx= Posicionx+2;
  }
  }
  

        
        // movieminto de magenes
      

   time++;
   if (time >=450){
    Posximagen1 = Posximagen1+2;
     Posximagen2 =Posximagen2-2;
    
   }
   
     
  // texto Oceano calidp e imagen 2

   fill(255,146,21);// 
  textFont(fuente4);
  textSize(40);
 text( texto1erpantalla2,Posicionx1,Posiciony2+60);
   
 
  if(Posiciony1 == 360){
      if ( Posicionx1 > 400){
                Posicionx1=Posicionx1-2;
     }

  }
   
 
      




 if( time >= 900 ){  //18segundos  //EVENTO
     Estado = "Pantalla2";
      time= 0;
     

 
}
 
 
 
 
 
  } else if ( Estado.equals("Pantalla2") ) {
    
     background(0);
    image(Imagen3,-100,-190);
    image(Pajaros,Posxpajaro1,Posypajaro1);
     image(Pajaros2,Posxpajaro2,Posypajaro2);
    
    Posxpajaro1++;
    if ( Posxpajaro1 >= 690){
        Posxpajaro1= -100;
    }
    
    Posxpajaro2--;
    if ( Posxpajaro2 <= -100){
        
        Posxpajaro2= 700;
        
    }    
    
 
    
    
  fill(200,180,0);
  textFont(fuente);
  textSize(40);
    text(texto2dapantalla1, Postextx1,Postexty1); 
    if ( Postextx1 < 40){
       Postextx1 = Postextx1 +2;
    }
    fill(200,160,0);
    text(texto2dapantalla2, Postextx2,Postexty2);
    
    if ( Postextx2 < 120){
         Postextx2 = Postextx2 +2;
    }
    fill(200,130,0);
      text(texto2dapantalla3, Postextx3,Postexty3); 
    if ( Postextx3 < 40){
         Postextx3 = Postextx3 +2;
    }
    fill(200,100,0);
      text(texto2dapantalla4, Postextx4,Postexty4); 
    if ( Postextx4 < 120){
       Postextx4 = Postextx4 +2;
    }
    
     time++;
     if ( time >= 450){
           Postexty1++;
           
      Postexty1++;
      
     
         
    }
    
    if ( time >= 510){
           Postexty2++;
           
      Postexty2++;
  
   
         
    }
    
        if ( time >= 590){
           Postexty3++;
           
      Postexty3++;
      
     
         
    }
    
         if ( time >= 670){
           Postexty4++;
            Postexty4++;
           
 }
 
 
    

  
   

   
 if( time >= 750 ){  //14segundos  //EVENTO
     Estado = "Pantalla3";
      time= 0;
     

}
  
  
  
  
  
  
  
  
 
 
 
 }else if ( Estado.equals("Pantalla3") ){ 
   
    background(0);
   
  
   
   
     image(Imagen4,-100,0);
     
     //fondo
     fill(242,255,75);
     textSize(6);
    Posnum = Posnum+5;
     Posnum2 = Posnum2+5;
           Posnum3 = Posnum3+5;  
             Posnum4 = Posnum4+5;
     Posnum5 = Posnum5+5;         
         Posnum6 = Posnum6+5;     
              Posnum7 = Posnum7+5;
              Posnum8 = Posnum8+5;
         Posnum9 = Posnum9+5;     
     Posnum10 = Posnum10+5;   
                  Posnum11 = Posnum11+5;
      Posnum12 = Posnum12+5;
     
     
     
     
     text("7",50, Posnum2); 
       text("3",150,Posnum3 );
         text("7",200,Posnum4 ); 
           text("3",250, Posnum5); 
             text("7",300,Posnum6); 
              text("3",350,Posnum7 ); 
              text("7",400, Posnum8); 
               text("3",450, Posnum9); 
                text("7",500, Posnum10); 
                 text("3",550,Posnum11 ); 
                  text("7",600,Posnum12 );
                   text("3",10, Posnum);
                    text("7",100,Posnum2 ); 
                     text("3",220,Posnum3); 
                      text("7",377,Posnum4 );
                       text("3",488,Posnum5); 
                        text("7",520,Posnum6 ); 
                        
                        
                        
          text("7",10, Posnum2+100); 
       text("3",100,Posnum3+90 );
         text("7",120,Posnum4+60 ); 
           text("3",277, Posnum5+100); 
             text("7",330,Posnum6+200); 
              text("3",388,Posnum7+250 ); 
              text("7",400, Posnum8+300); 
               text("3",470, Posnum9+100); 
                text("7",525, Posnum10+150); 
                 text("3",570,Posnum11+220 ); 
                  text("7",620,Posnum12+280 );
                   text("3",650, Posnum+259);
                    text("7",77,Posnum2+50 ); 
                     text("3",235,Posnum3+20); 
                      text("7",366,Posnum4+95 );
                       text("3",422,Posnum5+310); 
                        text("7",515,Posnum6+280 ); 
                        
                        
                        if (Posnum > 600){
                        Posnum= -20;
                        
                        }
                       if (Posnum2 > 600){
                        Posnum2= -100;
                        
                        }     
                        
                              if (Posnum3 > 600){
                        Posnum3= -300;
                        
                        }
                              if (Posnum4 > 600){
                        Posnum4= -420;
                        
                        }
                        
                              if (Posnum5 > 600){
                        Posnum5= -60;
                        
                        }
                        
                              if (Posnum6 > 600){
                        Posnum6= -12;
                        
                        }
                        
                              if (Posnum7 > 600){
                        Posnum7= -220;
                        
                        }
                        
                              if (Posnum8 > 600){
                        Posnum8= -35;
                        
                        }
                        
                              if (Posnum9 > 600){
                        Posnum9= -45;
                        
                        }
                        
                              if (Posnum10 > 600){
                        Posnum10= -137;
                        
                        }
                        
                              if (Posnum11 > 600){
                        Posnum11= -38;
                        
                        }
                        
                              if (Posnum12 > 600){
                        Posnum12= -12;
                        
                        }
                  
     
  
  
   fill(255);
   textFont(fuente);
   textSize(35);
   text(texto3rapantalla1, movertextoenx1,movertextoeny1); 
   
   if (movertextoenx1 > 50){
           
           movertextoenx1 = movertextoenx1-2;
          
       
   }
    
    
    
    fill(188,0,16);
   textFont(fuente4);
    textSize(35);
    text(texto3rapantalla2, movertextoenx2,movertextoeny2);
    
      if (movertextoenx2 < 20){
        
           movertextoenx2=  movertextoenx2 +2;
           
  
 }
    
    
    fill(255);
   textFont(fuente);
   textSize(35);
    text(texto3rapantalla3, movertextoenx3,movertextoeny3); 
    
    if(movertextoenx2 == 20 && movertextoenx3 > 50 ){
    
       movertextoenx3=    movertextoenx3   -2;
       
    
    }


fill(0,0,255);
//fill(6,85,193);
 textFont(fuente4);
    textSize(35);
    text(texto3rapantalla4, movertextoenx4,movertextoeny4); 
    
    if(movertextoenx2 == 20 && movertextoenx4 < 20 ){
 
       movertextoenx4 =    movertextoenx4      +2;
       
       
       
       }
    
time++;
if( time>= 850 ){  //15segundos  //EVENTO
     Estado = "Pantalla4";
      time= 0;
    }
   
   
   
   
 
 
 
 }else  if ( Estado.equals("Pantalla4") ) {
   
    background(0);
   
   
  
   
     image(Imagen5,0,-100);
     image(Ave,movimgx1,movimgy1);
     image(Peces,movimgx2,movimgy2);
     image(Pinguinos,movimgx3,movimgy3);
     image(Tiburon,movimgx5+20,movimgy5);
     image(Lobomarino,movimgx4,movimgy4);
     textFont(fuente2);
     textSize(20);
     fill(0);
      text("Aves", movimgx1,movimgy1+120);
         text("Peces", movimgx2,movimgy2+120);
         fill(230,20,20);
            text("Pinguinos", movimgx3,movimgy3+120);
            
               text("Lobo marino", movimgx4+10,movimgy4+120);
               fill(0);
                  text("Tiburon", movimgx5+40,movimgy5+120);
            
     
    textFont(fuente3);
    textSize(30);
    
    fill(0,255,0);
    text(texto4tapantalla1, movtextx1-20,movtexty1);
      fill(1,49,0);
     text(texto4tapantalla2, movtextx2-20,movtexty2);
     fill(94,255,94);
     text(texto4tapantalla3, movtextx3-20,movtexty3);
    
   
   
    if (movtexty1 > 100){
          movtexty1= movtexty1 -3;
          }
    
    
     if (movtexty2 > 200){
          movtexty2 =movtexty2 -2;
          }

     if (movtexty3 > 300){
          movtexty3= movtexty3 -1;
          }
    
         if ( movtexty3 == 300 && movimgy1 > 350){
             movimgy1--;
         
        }
   if ( movtexty3 == 300 && movimgy2 > 350){
             movimgy2--;}
             
    if ( movtexty3 == 300 && movimgy3 > 350){         
                movimgy3--;}
                
        if ( movtexty3 == 300 && movimgy4 > 350){         
             movimgy4--;}
             
          if ( movtexty3 == 300 && movimgy5 > 350){     
              movimgy5--;}
              
  
  time++;
  if( time >= 900 ){  //18segundos  //EVENTO
     Estado = "Pantalla5";
      time= 0;
      } 
     
     
     

 }else if ( Estado.equals("Pantalla5") ) {
   background(0);
 

 
     image(Imagen6,0,0);
     image( Signos,moversignosx,0);
     
  
     if ( moversignosx <= -300){
            
            Izquierda = true;}
            
            if( moversignosx >= -50){
              
            Izquierda = false;
            }
            
            
        if (Izquierda){
        
           moversignosx += vel;
        
        } else {
         moversignosx -= vel;
        
        }

    fill(0);
    textFont(fuente3);
    textSize(40);
    text(texto5tapantalla1,textx,texty );
     
     if ( texty < 100){
          texty++;
     
     }
     
 
   
   //dibujar rect 1

   if (mouseX > 59 && mouseX < 181 && mouseY > 299 && mouseY < 326) {
   fill(20);
   
     textFont(fuente2); 
     fill(255,0,0);
     textSize(30); 
     text(texto5tapantalla5, 60, 400);
   
   
   
   }   else {
      fill(50);
}
   
   stroke(40);
   rect(60,300,120,25);



textFont(fuente2); 
   fill(200);
   textSize(20);
   text(texto5tapantalla2,65,318);  
   
   
   
   
   
      //dibujar rect 2

   if (mouseX > 259 && mouseX < 381 && mouseY > 299 && mouseY < 326) {
   fill(20);
   
      textFont(fuente2); 
     fill(0,255,0);
     textSize(30); 
     text(texto5tapantalla6, 260, 400);
   
   
   

}   else {
      fill(50);
}
   
   stroke(40);
   rect(260,300,120,25);



textFont(fuente2); // boton 2
   fill(200);
   textSize(20);
   text(texto5tapantalla3,295,318); 
   
 
    
    //dibujar rect 3

   if (mouseX > 459 && mouseX < 581 && mouseY > 299 && mouseY < 326) {
   fill(20);
      textFont(fuente2); 
     fill(255,0,0);
     textSize(30); 
     text(texto5tapantalla7, 462, 400);
   
   
   

}   else {
      fill(50);
}
   
   stroke(40);
   rect(460,300,120,25);



textFont(fuente2); // boton 2
   fill(200);
   textSize(17);
   text(texto5tapantalla4,460,318); 
    
   
    
     
   
   time++;
   if( time>= 500 ){  //6 segundos  //EVENTO
     Estado = "Pantalla6";
      time= 0;
 
   
   }   
   
 
 
 
 } else if (Estado.equals("Pantalla6") ) {
     background(0,200,200);
     image( Imagen7,0,0);
     image(orca1,orcax1,orcay1);
      image(orca2,orcax2,orcay2);
      image(orca3,orcax3,orcay3);
      image(orca4,orcax4,orcay4);
       image(orca5,orcax5,orcay5);
       image(orca6,orcax6,orcay6);
       image(orca7,orcax7,orcay7);

      if (orcay1 > -150){
         orcay1--;
        velocidad++;
      }
      
  if (orcay1 == -150){
         orcay1 = 700;}
      
          if (orcay2 < 700){
         orcay2++;
           velocidad++;
        
      }
      if (orcay2 == 700){
         orcay2 = -700;
        
       
      }
      
          if (orcay3 > -600){
         orcay3--;
           velocidad++;
         
      }
      if (orcay3 == -600){
         orcay3 = 550;
          
 
      }
      
      
          if (orcay4 <  900){
         orcay4++;
          velocidad++;
      }
      if (orcay4 == 900){
         orcay4 = -200;
      
      }
      
           if (orcax5 <  900){
         orcax5++;
          velocidad++;
      }
      
         if (orcax5 == 900){
         orcax5 = -300;
      
      }
      
                if (orcax6 >  -400){
         orcax6--;
          velocidad++;
      }
      
         if (orcax6 == -400){
         orcax6 = 800;
      
      }
      
                     if (orcay7 < 600){
         orcay7++;
          velocidad++;
      }
      
         if (orcay7 == 600){
         orcay7 = -800;
      
      }
      

  
      textFont(fuente);
      textSize(40);
      fill(255);
      text(texto6tapantalla1, movimientoenx1, movimientoeny1);
      fill(0);
      textSize(35);
      text(texto6tapantalla2,movimientoenx2-10,movimientoeny2 );
      if (movimientoenx1 < 220){
         movimientoenx1++; 
     }
     
     if (movimientoenx2 < 50){
     movimientoenx2++; 
 }
     
 //dibujar boton 2

   if (mouseX > 569 && mouseX < 621 && mouseY > 19 && mouseY < 51) {
   fill(20);

}   else {
      fill(50);
}
   
   stroke(60);
   rect(570,20,50,30);
   fill(180);
   textSize(10);
   text("Volver",578,40);
   
   
    
      



}


}

   




void mouseClicked(){
 if (Estado.equals ("menu")){
   if  (mouseX > 99 && mouseX < 201 && mouseY > 339 && mouseY < 366) { // boton para inciciar
              
                 Estado= "Pantalla1";
                 
           }
       }
       
       
   if (Estado.equals ("Pantalla6")){      
       if (mouseX > 569 && mouseX < 621 && mouseY > 19 && mouseY < 51)  { // boton para volver al menu.
                   Estado= "menu";
                   
                   
          // acomodar nuevamente variables en su lugar          
 
   
//variables de posiciones de las burbujas
  Posx1=10;
  Posy1=-10;
  Posx2 =60;
  Posy2= 100;
  Posx3= 500;
  Posy3= 300;
  Posx4 = 120;
  Posy4= 470;
  Posx5= 170;
  Posy5 = 850;
  Posx6 = 200;
  Posy6= 650;
  
  Posx7=280;
  Posy7=670;
  Posx8 =330;
  Posy8= 180;
  Posx9= 390;
  Posy9= 910;
  Posx10 = 430;
  Posy10= 280;
  Posx11= 480;
  Posy11 = 150;
  Posx12 = 450;
  Posy12= 550;
    Posx13=10;
  Posy13=100;
  Posx14 =160;
  Posy14= 1200;
  Posx15= 270;
  Posy15= 300;
  Posx16 = 400;
  Posy16= 900;
  
  
   Posx17=450;
  Posy17 =80;
  Posx18= 200;
  Posy18= 270;
  Posx19= 10;
  Posy19 = 40;
  Posx20= 340;
  Posy20= 150;
 
  
    // varibles para posicion del texto del titulo
  Posxtit1 = -100;
  Posxtit2= 150;
  Posxtit3=-430;
  Posxbotontit= -20;
  
  // variables 1er pantalla
  
  Posiciony1 = 100;
  Posiciony2 = 100;
  Posiciony3=150;
  Posicionx= -200; // texto frio
  Posicionx1 = 680;// texto calidos
 
  
  Posyimagen1=110;
  Posyimagen2=170;
  Posximagen1= 80;
  Posximagen2= 440;


// variables 2da pantalla 

Postextx1 = -270;
Postexty1 = 260;
Postextx2 = -290;
Postexty2 = 310;
Postextx3= -310;
Postexty3 = 360;
Postextx4= -330;
Postexty4 =410;


Posxpajaro1= 0;
Posypajaro1= 100;
 Posxpajaro2= 700;
  Posypajaro2= 50;


// variables 3ra pantalla 

movertextoenx1 = 700;
movertextoeny1 = 100;
movertextoenx2 = -600;
movertextoeny2 = 150;
movertextoenx3 = 700;
movertextoeny3 = 320;
movertextoenx4 = -600;
movertextoeny4 =  370;

Posnum = -10;
Posnum2 = -90;
Posnum3 = -300;
Posnum4 = -150;
Posnum = -200;
Posnum = 100;
Posnum = -288;
Posnum = -77;
Posnum = -9;
Posnum = -40;
Posnum = -120;
Posnum = -241;


// variables pantalla 4

movtextx1 = 50;
movtexty1= 500;
movtextx2 = 50;
movtexty2= 600;
movtextx3= 50;
movtexty3= 700;


movimgy1 = 500;
movimgy2= 520;
movimgy3= 540;
movimgy4= 560;
movimgy5= 580;
movimgx1= 0;
movimgx2= 120;
movimgx3= 250;
movimgx4= 360;
movimgx5= 470;


// variables pantalla 5

 moversignosx = -50;
 
 textx=100;
 texty=-50;
 
 
 // variables Pantalla 6

 
 orcax1 = 20;
 orcay1 = 500;
 orcax2 = 150;
 orcay2 = -600;
 orcax3 = 300;
 orcay3 = 700;
 orcax4 = 400;
 orcay4 = -100;
 
  orcax5 = -200;
  orcay5= 300;
  orcax6 = 750;
  orcay6 = 20;
  orcax7 = 80;
  orcay7= -150;
 
 
 
 
 movimientoenx1=10;
 movimientoeny1= 80;
 movimientoenx2=-100;
 movimientoeny2= 400;
             
                  
                 
           } 
           
 }
 
 
      
       



}

  
