//legajo 91500/8


PImage Conejo;

void setup(){

  size(800,400);
  Conejo = loadImage("Conejo.jpg");
  colorMode(RGB);
  
}

void draw(){

  background(60,100,40);
  image(Conejo,0,0);
  
 //flores de fondo
 noStroke();
 //1
 
 fill(200,250,0);
 circle(450,42,8);
 circle(450,58,8);
 circle(442,50,8);
 circle(458,50,8);
 
 //2
 
fill(200,180,0);
circle(450,50,11);

 fill(200,250,0);
 circle(700,62,8);
 circle(700,78,8);
 circle(708,70,8);
 circle(692,70,8);
 
fill(200,180,0);
circle(700,70,11);

//3

 fill(200,250,0);
 circle(500,112,8);
 circle(500,128,8);
 circle(508,120,8);
 circle(492,120,8);
 
fill(200,180,0);
circle(500,120,11);
 
//4

 fill(200,250,0);
 circle(778,120,8);
 circle(762,120,8);
 circle(770,128,8);
 circle(770,112,8);
 
fill(200,180,0);
circle(770,120,11);

//5

 fill(200,250,0);
 circle(430,208,8);
 circle(430,192,8);
 circle(438,200,8);
 circle(422,200,8);
 
fill(200,180,0);
circle(430,200,11);
  
  //conejo
  
  fill(237,157,77);
  ellipse(760,250,300,200);//cuerpo
  fill(60,100,40);
  triangle(790,151,800,158,780,150);
  circle(800,147,20);
  fill(237,157,77);
  ellipse(700,280,300,200);//cuerpo
  ellipse(580,190,150,130);//cabeza
  fill(230,140,77);
  ellipse(620,230,13,10);//sombra
  ellipse(625,227,13,10);//sombra
  ellipse(630,224,13,10);//sombra
   ellipse(630,221,13,10);//sombra
     ellipse(633,218,13,10);//sombra
  
  //orejas
  fill(250,184,119);
  ellipse(620,85,60,135);
  fill(237,157,77);
  ellipse(630,110,60,140);
  fill(250,184,119);
  ellipse(630,85,40,70);
  triangle(612,100,649,100,630,150);
  
  //ojo
  fill(250,184,119);
  triangle(545,170,585,175,555,202);
   
  fill(0);
   ellipse(560,184,23,18);
   fill(255);
   ellipse(560,182,10,3);
   
   //nariz
      stroke(255);
   //bigotes
   line(527,210,490,239);
   line(530,211,500,245);
   line(533,212,510,249);
   line(536,213,520,254);
   line(539,214,530,259);
   
   
   noStroke();
   fill(0);
   triangle(505,200,515,200,506,208);
   
   circle(530,220,2);//pequitas
   circle(538,215,2);
   circle(535,222,2);
   circle(533,210,2);
   circle(526,210,2);
   circle(530,220,2);
   circle(533,229,2);

   
  //flores
 
 fill(60,180,20);// 1er flor
  
 quad(560,400,560,350,565,350,565,400);
 
// 2er flor
 
 quad(660,400,660,380,670,380,670,400);
 
 //3ra flor
 stroke(60,180,20);
 strokeWeight(3);
 line(400,400,420,350);
 
 
 
 //1ra
  stroke(50);
 strokeWeight(1);
  
 fill(200,250,0);
 circle(565,355,20);//petalo
 circle(550,340,20);
 circle(580,340,20);
 circle(565,325,20);//petalo
 
 fill(200,180,0);
 circle(565,340,20);
 //2da

 fill(200,250,0);
 circle(665,335,25);
 circle(665,377,25);
 circle(647,356,25);
 circle(685,356,25);
 
fill(200,180,0);
circle(665,356,25);


//3da


 fill(200,250,0);
 circle(425,363,15);
 circle(420,338,15);
 circle(434,347,15);
fill(200,180,0);
circle(423,350,15);



 
  
   
  
  
  
  
  


   
 
  

  
 ;
  
 
  
  
   



}
