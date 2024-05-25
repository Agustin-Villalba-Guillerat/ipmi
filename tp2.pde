// TP#1 
// Agustin Villalba Guillerat (88182/9)
// Para reiniciar con click izquierdo :D


int miVariable =1000;
PImage jpog1;
PImage jpog2;
PImage jpog3;

PFont fuentenuevaimportada;


float posY;
int estado;

void setup(){
  size (640,480); 
  jpog1 = loadImage ("jpog1.jpg");
  jpog2 = loadImage ("jpog2.jpg");
  jpog3 = loadImage ("jpog2.jpg");
  println(frameCount);  
  
  fuentenuevaimportada = createFont( "Jurassic Park.ttf",80);
  textFont (fuentenuevaimportada);
  
  textAlign(CENTER);
  
  posY = 1200;
}

void draw(){
    
  println(frameCount);
  
  miVariable = frameCount;
  
  println (miVariable);
  
 if (estado==0) 
  
  background(0);
  image(jpog1,0,0);
  textSize (120);
  fill(255,255,0);
  text ("JURASSIC PARK\n OPERACION GENESIS ",296,posY-500);
  text ("JURASSIC PARK\n OPERACION GENESIS",295,posY-500);
  fill(255,0,0);
  text ("JURASSIC PARK\n OPERACION GENESIS",295,posY-500);
  
 if (estado==1) 
  
  background(0); 
  
    textAlign(CENTER);
    textSize (100);
    fill(255);
    text("es un juego de gestion \n, diseñada para los  \n fanaticos de la \n franquicia jurasica \n y su amor por los dinosaurios", 320,posY);
   
    posY--;
      
  if (estado==2) {

    background(0);
    image(jpog2,0,0);
    textSize(100);
    fill(255);
    text("en el administraras un  \n parque criaras dinos\n y entretendras a la gente.", 320, posY);
  
    posY--;
    
    
  }
  
      if (estado==3) {

    background(0);
    image(jpog3,-200,-15);
    textSize(100);
    fill(255);
    text("ademas deberas tener cuidado  \n  con los sabotajes \ndinosaurios furiosos \n tormetas \n y el manejo del dinero", 320, posY);
   
    posY--;
  }

/////////////////////////////////////
  if (posY<10 && estado==0) {
    estado=2;
    posY=width;
  }
   if (posY<10 && estado==1) {
    estado=2;
    posY=width;
  }
  if (posY<10 && estado==2) {
    estado=3;
    posY=width;
  }
}

void mousePressed(){
  
  estado=0;
  posY = 700;
}
