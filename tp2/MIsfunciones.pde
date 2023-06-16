void Cuadrado(int Posx, int Posy, int tam){  // dibujar un cuadrado.
   
    pushStyle();
 //
 
 
  strokeWeight(2);
  rect(Posx,Posy,tam,tam);
  // 
  popStyle(); 
   
 }
 
 void Cuadradoscentrales(){ // cuadrados rojos
       pushStyle();
 //
    
if (mouseX > 525 && mouseX < 590 && mouseY > 130 && mouseY < 190 ){
              for( int r = 525 ; r < 642 ; r++ ){
               fill( r, 0, 0 );
            
         }
    } else if (mouseX > 590 && mouseX < 680 && mouseY > 130 && mouseY < 190 ){
              for( int r = 525 ; r < 642 ; r++ ){
               fill( r, r, 0 );
               
         }
    }    else if (mouseX > 525 && mouseX < 590 && mouseY > 220 && mouseY < 270){
     for( int r = 525 ; r < 642 ; r++ ){
    fill( 0, 0, r );
    
    }
    } else if (mouseX > 590 && mouseX < 680 && mouseY > 220 && mouseY < 270){
     for( int r = 525 ; r < 642 ; r++ ){
    fill( r, 0, r );
    
    }
    } else if (mouseX > 525 && mouseX < 590 && mouseY > 190 && mouseY < 220 ){
    
     for( int r = 525 ; r < 642 ; r++ ){
    fill( 0, r, 0 );
    
    }
    }else if (mouseX > 590 && mouseX < 680 && mouseY > 190 && mouseY < 220 ){
    
     for( int r = 525 ; r < 642 ; r++ ){
    fill( 0,r,r  );
    
    }
    }
    
  else {
      fill(211,42,23);
        
    }
   

    for (int c = Posx; c < 660; c+=28){
    for (int i = Posy; i < 250; i+=28){
         
          Cuadrado(c,i, tam);
    
         
     }
   }
    // 
  popStyle(); 
   }
 

 void cuadrilla(int Posx, int Posy){  // grillla de cuadrados de fondo.
   pushStyle();
 //
 
 if (mouseX >399 && mouseX < 800 && mouseY > 0 && mouseY < 133) {
    fill(144,203,184); 
      
  
  }else if (mouseX >399 && mouseX < 800 && mouseY > 134 && mouseY < 266) {
       fill(0,82,57);
       
       
          
  }else  if (mouseX >399 && mouseX < 800 && mouseY > 267 && mouseY < 400) {
      
       fill(0,165,114);
  }else {
   fill (105,155,140);}
  for (int c = Posx; c < 800; c+=28){
     for (int i = Posy; i < 800; i+=28){
              
          Cuadrado(c,i, tam );
             if ( mouseX > 400 && mouseX <800 && mouseY > 0 && mouseY < 400){
            float d = dist(c,i,mouseX, mouseY);
            ellipse(c,i,d/4,d/4);
        
      }
    }
  }
        
    // 
  popStyle(); 
 }
 
   
   
void Rombos (int Posx, int Posy, color fondo){ // rombos en las esquinas de los caudrados.
 
  pushStyle();
 //
 
 fill(fondo);
 
 for(int e = Posx; e< 800; e+= 28){ 
      for(int c = Posy; c <800; c+= 28){
           quad(e,c, e+9,c+9,e, c+18, e-9, c+9);
    } 
  }
//
 popStyle();

}

void LineasBlancas1(int Posx, int Posy){ // lineas centrales de los rombos.
     pushStyle();
 //

 stroke(255);
  strokeWeight(5);


  for(int l = Posx; l < 800; l+= 28){    //arriba
      for(int j = Posy; j < 120; j+= 28){
             line(l,j, l+8,j-8);
                                  if ( mouseX > 400 && mouseX <800 && mouseY > 0 && mouseY < 400){
            float d = dist(l,j,mouseX, mouseY);
            ellipse(l,j,d/35,d/35);
             }
           }
    }
    
     for(int l = Posx; l < 800; l+= 28){    //abajo
      for(int j = Posy+280; j < 400; j+= 28){
             line(l,j, l+8,j-8);
                                          if ( mouseX > 400 && mouseX <800 && mouseY > 0 && mouseY < 400){
            float d = dist(l,j,mouseX, mouseY);
            ellipse(l,j,d/35,d/35);
            }
      }
    }
    
   for(int l = Posx; l < 500; l+= 28){    //lateral izquierdo
      for(int j = Posy+112; j < 300; j+= 28){
             line(l,j, l+8,j-8);
                                          if ( mouseX > 400 && mouseX <800 && mouseY > 0 && mouseY < 400){
            float d = dist(l,j,mouseX, mouseY);
            ellipse(l,j,d/35,d/35);
           
        
      }
      }
    }
    
    for(int l = Posx+308; l < 800; l+= 28){    // lateral derecho
      for(int j = Posy+112; j < 300; j+= 28){
             line(l,j, l+8,j-8);
                                          if ( mouseX > 400 && mouseX <800 && mouseY > 0 && mouseY < 400){
            float d = dist(l,j,mouseX, mouseY);
            ellipse(l,j,d/35,d/35);
           
        
      }
      }
    }
     //
 popStyle();
 }
 

void LineasBlancas2(int Posx, int Posy){ // lineas centrales de los rombos. (inversas).
     pushStyle();
 //

 stroke(255);
  strokeWeight(5);
 

for(int i = Posx; i < 670; i+= 28){    // lateral izquierdo
      for(int j = Posy; j < 280; j+= 28){
             line(i,j, i+8,j+8);
 }
        }
  //
 popStyle();
 }
 
 
 
 
