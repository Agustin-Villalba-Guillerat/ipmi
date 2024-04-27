//TP1 - Dibujo básico y GitHub
//Agustin Villalba Guillerat (88182/9)
//Comision 2



PImage paisaje;

void setup () {

  size (800,400);
  background(255);
  paisaje = loadImage ("paisaje.jpg");

}

void draw () {

  image (paisaje, 0, 0);
  
//arena
  
  fill(236,226,198);
  noStroke();
  rect (400,0,400,800);
  

  
 //cielo
  
  fill (135, 206, 235);
  rect (400, 0, 400,250);
  
   fill (34, 113, 180);
  rect (400, 0, 400,50);
  
 //montaña 
  
  fill (81,58,42);
  rect (790, 200, 100,50);
  rect (730, 205, 100,50);
  rect (630, 205, 100,50);
  rect (600, 195, 100,50);
  rect (598, 205, 100,50);
  rect (590, 210, 100,50);
  rect (590, 210, 100,65);
  rect (565, 205, 100,65);
  rect (545, 200, 100,50);
  rect (525, 205, 100,50);
  rect (500, 215, 100,50);
  rect (400, 225, 50,50);
  rect (400, 230, 400,50);
  
//nubes

  fill(255);
  
   ellipse (600,65, 25,25);
  ellipse (615,75, 25,25);
  ellipse (600,60, 50,25);
  ellipse (605,70, 25,25);
  ellipse (625,65, 25,25);
  ellipse (615,60, 25,25);
  ellipse (596,65, 50,25);
  ellipse (600,70, 25,25);
  
  ellipse (670,100, 25,25);
  ellipse (655,900, 25,25);
  ellipse (6500,95, 50,25);
  ellipse (670,90, 25,25);
  ellipse (775,95, 25,25);
  ellipse (645,90, 25,25);
  ellipse (657,95, 50,25);
  ellipse (689,90, 25,25);
  
  ellipse (425,100, 25,25);
  ellipse (415,900, 25,25);
  ellipse (4250,95, 50,25);
  ellipse (415,90, 25,25);
  ellipse (425,95, 25,25);
  ellipse (415,90, 25,25);
  ellipse (426,95, 50,25);
  ellipse (415,90, 25,25);
  
  ellipse (425,205, 25,25);
  ellipse (415,190, 25,25);
  ellipse (4250,195, 50,25);
  ellipse (415,190, 25,25);
  ellipse (425,195, 25,25);
  ellipse (415,190, 25,25);
  ellipse (426,195, 50,25);
  ellipse (415,190, 25,25);
  
  ellipse (525,135, 25,25);
  ellipse (515,130, 25,25);
  ellipse (500,125, 50,25);
  ellipse (505,130, 25,25);
  ellipse (525,135, 25,25);
  ellipse (515,130, 25,25);
  ellipse (496,135, 50,25);
  ellipse (500,130, 25,25);
  
  
  
  ellipse (420,175, 25,25);
  ellipse (425,165, 25,25);
  ellipse (445,175, 50,25);
  ellipse (435,165, 25,25);
  ellipse (525,165, 25,25);
  ellipse (515,170, 25,25);
  ellipse (496,165, 50,25);
  ellipse (500,170, 25,25);
  
  ellipse (650,175, 25,25);
  ellipse (625,165, 25,25);
  ellipse (645,175, 50,25);
  ellipse (635,165, 25,25);
  ellipse (625,165, 25,25);
  ellipse (615,170, 25,25);
  ellipse (696,165, 50,25);
  ellipse (600,170, 25,25);
  
   ellipse (750,175, 25,25);
  ellipse (765,165, 25,25);
  ellipse (745,175, 50,25);
  ellipse (735,165, 25,25);
  ellipse (725,165, 25,25);
  ellipse (715,170, 25,25);
  ellipse (796,165, 50,25);
  ellipse (700,170, 25,25);
  
    
  
  
  
  

  
  
}
