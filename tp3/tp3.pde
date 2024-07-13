//Agustin Villalba Guillerat
// https://youtu.be/UXcY_uuAdWc?si=bm7fCGTGuFw4r7Lz

PImage referencia;

//dibujar el centro
float centrX=0;
float centrY=0;

float moveX=10;
float moveY=10;
//Variables paraRotar
float rot=50;

//variables para controlar el color
int r = 255;
int g =0;
int b = 0;

//variable para el tamaño
int tam=830;


void setup() {
  size(800, 400);
  referencia = loadImage("F_48.jpg");
  rectMode(CENTER);
}

void draw() {
  ilusion();
  teclado(10);
  image(referencia, 0, 0, 400, 400);
}


void ilusion () {
//Guarda el sistema de cordenadas anterior lo que permite cambiarlas sin afectar a lo que este fuera 
  pushMatrix(); 
  
  
  translate(580, 190);
  rotate(radians(rot));

  //la cantidad de ejecuciones / cantidad de cuadrados que se genera en cada paso del for
  for (int i =0; i < 40; i++) {
    for (int a = 0; a<800; a+=15) {

      fill(r, g, b);
      rect(0, 0, tam-a, tam-a);

      //cuando la suma de las variable es par pinta todo de negro
      if ((i+a) % 2 == 0 ) {
        r=0;
        g=0;
        b=0;
      } else if ((i+a) >= 810) {//pinta el ultimo de rojo
        r=255;
        g=0;
        b=0;
      }//cuando la suma de las variable NO es par pinta todo de blanco
      else {
        r=255;
        g=255;
        b=255;
      }
    }
  }

  popMatrix();
  //cierra el pushMatrix
}


//FUNCION QUE RETORNA VALOR 
boolean EstoyDentroDelBoton(int x1 , int x2 , int y1, int y2){ 
  boolean BotonTrue = (mouseX> x1) && (mouseX < x2) && (mouseY > y1) && (mouseY <y2);
  
return BotonTrue;
}

//FUNCION QUE NO RETORNA VALOR
void teclado(float velocidad){
  if (keyPressed && key == 'a' ||keyPressed && key == 'A') {
    rot=rot-velocidad;
  } else if (keyPressed &&key == 'd' || keyPressed && key == 'D') {
    rot=rot+velocidad;
  } else if (keyPressed &&key == 's' || keyPressed && key == 'S') {
    rot=random(0,1000);
  }
  
  if(mousePressed && EstoyDentroDelBoton(560,600,170,200) ){
      rot=50;
  }

}
