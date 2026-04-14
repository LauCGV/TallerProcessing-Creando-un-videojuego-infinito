PImage fondo, pj0, pj1, pj2, pj3, pj4, pj5, pj6, pj7, pj8, pjActual; //Declaración de imágenes
float p_x, p_y, p_width, p_height; //Declaración de posiciones
int movimiento, velocidad; //variables auxiliares


void setup(){
  fullScreen();
  //Carga de imágenes
  fondo = loadImage("cesped.jpg");
  pj0 = loadImage("personaje_0.png");
  pj1 = loadImage("personaje_1.png");
  pj2 = loadImage("personaje_2.png");
  pj3 = loadImage("personaje_3.png");
  pj4 = loadImage("personaje_4.png");
  pj5 = loadImage("personaje_5.png");
  pj6 = loadImage("personaje_6.png");
  pj7 = loadImage("personaje_7.png");
  pj8 = loadImage("personaje_8.png");
  //Inicialización de variables
  p_x = width*0.45;
  p_y = height*0.1;
  p_width = width*0.12;
  p_height = height*0.15;
  pjActual = pj4;
  velocidad = 30;
  movimiento=4;
}
void draw(){
  //Mostrar fondo y personaje
  image(fondo,0,0,width,height);
  image(pjActual, p_x, p_y, p_width, p_height);
  
  //Movimiento del personaje
  if(keyPressed && (key == 'd' || keyCode == RIGHT)){
    if (p_x + p_width < width){
      p_x += velocidad;
    }
    switch(movimiento) {
      case 0:
      pjActual = pj1;
      movimiento = 1;
      break;
      case 1:
      pjActual = pj2;
      movimiento = 2;
      break;
      case 2:
      pjActual = pj3;
      movimiento = 3;
      break;
      case 3:
      pjActual = pj0;
      movimiento = 0;
      break;
      case 4:
      pjActual = pj0;
      movimiento = 0;
      break;
    }
    if(movimiento>4){
      pjActual = pj4;
      movimiento=4;
    }
  }
  if(keyPressed && (key == 'a' || keyCode == LEFT)){
    if (p_x > 0){
      p_x -= velocidad;
    }
    switch(movimiento) {
      case 5:
      pjActual = pj6;
      movimiento = 6;
      break;
      case 6:
      pjActual = pj7;
      movimiento = 7;
      break;
      case 7:
      pjActual = pj8;
      movimiento = 8;
      break;
      case 8:
      pjActual = pj5;
      movimiento = 5;
      break;
      case 4:
      pjActual = pj5;
      movimiento = 5;
      break;
    }
    if(movimiento<4){
      pjActual = pj4;
      movimiento=4;
    }
  }
}
