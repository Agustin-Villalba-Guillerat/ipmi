// Agustin Villalba Guillerat (88182/9)

int pantallas =0;
PImage img1;
PImage img2;
PImage img3;
int mov =480;
boolean BotonTrue =false;
void setup() {
  size (640, 480);

  img1 = loadImage ("imagen_1.jpg");
  img2 = loadImage ("imagen_2.jpg");
  img3 = loadImage ("imagen_3.jpeg");
  textSize (25);
}


void draw() {

  println(mouseX, mouseY);

  if (pantallas == 0) {
    BotonTrue = false;
    background(255);
    fill(0);
    text("LAS DAMAS", 250, mov);
    mov--;

    if (mov <= -1 ) {
      mov = 640;
      pantallas = 1;
    }
  } else if (pantallas == 1) {
    mov--;
    image(img1, 0, 0, width, height);
    fill(255);
    rect(10, mov-50, 600, 250);
    fill(0);
    text(" Las damas es un juego de mesa para dos jugadores.", 10, mov);
    text(" El juego consiste en mover las piezas en diagonal", 10, mov+50);
    text("a través de los cuadros negros (o blancos en algunas", 10, mov+100);
    text(" variantes) de un tablero de 64 o 100 cuadros.", 10, mov+150);
    if (mov <= -160) {
      mov = 640;
      pantallas = 2;
    }
  } else if (pantallas == 2) {
    mov--;
    image(img2, 0, 0, width, height);
    fill(255);
    rect(10, mov-50, 620, 400);
    fill(0);
    text("Cada jugador dispone de 12 piezas de un mismo color", 10, mov);
    text("(unas blancas y las otras negras). que al principio", 10, mov+50);
    text("de la partida se colocan en las casillas negras  de las", 10, mov+100);
    text(" tres filas más próximas a él. El objetivo del juego de ", 10, mov+150);
    text("damas es capturar las fichas del a oponente o acorralados", 10, mov+200);
    text(" para que los únicos movimientos que puedan realizar sean", 10, mov+250);
    text("los que lleven a su captura", 10, mov+300);
    if (mov <= -320 ) {
      mov = 640;
      pantallas = 3;
    }
  } else if (pantallas == 3) {
    mov--;
    image(img3, 0, 0, width, height);
    fill(255);
    rect(0, mov-50, 630, 300);
    fill(0);
    text("Una partida de damas finaliza cuando se llega", 10, mov);
    text("a una de estas dos situaciones:", 10, mov+50);
    text("1) Pierde quien se queda sin piezas sobre el tablero", 10, mov+150);
    text("2) Si el jugador se equivoca 3 veces, pierde.", 10, mov+200);

    if (mov <= -260 ) {
      mov = 640;
      pantallas = 4;
    }
  } else if (pantallas == 4) {

    background(0);
    text("Reiniciar", 250, height/2);
    fill(255);
    rect(250, 250, 100, 80);

    if (mousePressed && (mouseX> 250) && (mouseX < 350) && (mouseY > 250) && (mouseY <330)) {
      BotonTrue = true;
    }
  }

  if (BotonTrue == true) {
    mov = 480;
    pantallas =0;
  }
}
