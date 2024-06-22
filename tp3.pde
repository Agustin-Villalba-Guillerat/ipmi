//Agustin Villalba Guillerat
//https://www.youtube.com/watch?v=_d-1q1LJeYQ
PImage img;

float mov=1; //variable para que las ellipse tenga movimiento

void setup() {
  size(800, 400);
  img = loadImage("referencia.jpeg");
  
  
  
}

void draw() {
  background(255);
  mov++;

  ilusion();

}

void ilusion () { 
   image(img, 0, 0, 200, 200);
  for (int i =0; i < 200; i+=1) {
    noFill();
    ellipse(width-300, 150, i+mov, i+mov);
  }
  
    boton();

//pregunta si presionaste el boton
  if (mousePressed && EstoyDentroDelBoton(50, 150, 250 , 330)) {
    background(random(255),random(255),random(255));
    for (int i =0; i < 200; i+=10) {
      noFill();
      ellipse(width-300, 150, i+mov, i+mov);
    }
  }
  if (mov >= 70) mov=0; //reinicio del tamaño de las ellipses
  
}

//esta funcion toma la posicion que le das en los parametros y analiza si el mouse esta dentro de esa area, si es asi la variable da verdadero (true)
boolean EstoyDentroDelBoton(int x1 , int x2 , int y1, int y2){ 
  boolean BotonTrue = (mouseX> x1) && (mouseX < x2) && (mouseY > y1) && (mouseY <y2);
  
return BotonTrue;
}


void boton() {
  textSize(15);
  text("NO PRESIONAR", 160, 300);
  fill(130, 120, 120);
  rect(50, 250, 100, 80);
}
