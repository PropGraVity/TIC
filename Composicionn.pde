
int direccion = 1; //0 es de arriva a abajo
int posicion = 127;
int posicion2 = 600;
int direcion2 = 1;

void setup()
{
  size(1100, 750);
  fill(#5DCBF2);
  noStroke();
  rect(0, 0, 1100, 500);
  fill(#11BC12);
  rect(0, 500, 10000, 10000);
  stroke(#050100);
  //patas
  fill(#FA8714);
  rect(150, 600, 100, 50);
  rect(300, 600, 100, 50);
  //Cuerpo
  fill(#EDAB69);
  triangle(130, 600, 420, 600, 275, 300);
  //morro
  fill(#9B5E21);
  rect(160, 185, 115, 115);
  rect(275, 185, 115, 115);
  //cabeza superior
  fill(#FAD4AE);
  rect(175, 70, 200, 115);
  quad(160, 55, 175, 70, 100, 242, 90, 70);
  quad(390, 55, 375, 70, 450, 242, 465, 70);
  //hojos

  //montaña
  fill(#6F6762);
  triangle(600, 500, 900, 500, 750, 300);
  fill(#FFFFFF);
  triangle(800, 360, 700, 360, 750, 300);
  fill(255, 0, 0);
  ellipse(500, posicion2, 100, 100);
}
void draw()
{
  fill(#D34242);
  quad(275, 200, 275, 230, 320, 325, 340, 250);//lengua
  fill(#FAD4AE);
  rect(175, 70, 200, 115);//cabeza superior
  fill(#57D3DE);
  //animados
  ellipse(241, posicion, 20, 35);//hojo 1
  ellipse(307, posicion, 20, 30);//hojo 2


  if (posicion2 > 500) {
    direcion2=1;
  }
  if (posicion2 < 100) {
    direcion2=0;
  }
  if (direcion2 ==1) {
    posicion2 = posicion2-4;
  } else {
    posicion2 = posicion2+4;
  }


  if (posicion > 154) {
    direccion=1;
  }
  if (posicion < 100) {
    direccion=0;
  }
  if (direccion ==1) {
    posicion = posicion-4;
  } else {
    posicion = posicion+4;
  }
}
