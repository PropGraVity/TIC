int select=0;
int x=500;
int y= 500;
int ancho=50;
void setup() {
  size(1200, 900);

  pintarfondo();
}
void draw() {
  fill(000000);
  
  arc(500, 500, 100, 60, PI/2, 3/4*(PI));


  //beginShape();{
  //vertex(0,0);
  //vertex(500,500);
  //vertex(200,300);
  //endShape(CLOSE);}
}
void keyPressed() {
  if (key=='b') {
    select=0;
    pintarfondo();
  }

  if (key=='q')select = 1;
  if (key=='w')select=2;
  if (key=='e')select=3; 
  if (key=='r')select=4;
  if (key=='t')select=5;
  if (key=='y')select=6;
}
void mousePressed() {

  if (select==1) {
    Melon mUno = new Melon ((int)mouseX, (int)mouseY, (int)random(60, 100), (int)random(40, 70));
    mUno.pintarMelon();
  }



  if (select==2) {
    Tractor tUno = new Tractor((int)mouseX, (int)mouseY);
    tUno.pintarTractor();
  }

  if (select==3) 
  {
    Maiz mUno = new Maiz((int)mouseX, (int)mouseY);
    mUno.pintarMaiz();
  }
  if (select==4) {
    Sandia sUno = new Sandia((int)mouseX, (int)mouseY, (int)random(50, 100));
    sUno.pintarSandia();
  }
}


void pintarfondo() {
  noStroke();
  rect(25, 25, 50, 50);
  fill(#87CEEB);
  rect(0, 0, 1200, 300);//paisaje  
  fill(#4FCF38);
  rect(0, 200, 1200, 1000);//de abajo    
  fill(#F4EA1C);
  arc(600, 200, 300, 300, PI, TWO_PI);//sol

  float x=random(0, 1200);
  fill(#F8C413);
  quad(x-1250, 200, x-1050, 200, -1050, 900, -1250, 900);
  fill(#C6590C); 
  quad(x-1050, 200, x-850, 200, -1000, 900, -1050, 900);
  fill(#F8C413);
  quad(x-1000, 200, x-800, 200, -800, 900, -1000, 900);
  fill(#C6590C);
  quad(x-800, 200, x-600, 200, -750, 900, -800, 900);
  fill(#F8C413);
  quad(x-750, 200, x-550, 200, -550, 900, -750, 900);
  fill(#C6590C);
  quad(x-550, 200, x-500, 200, -500, 900, -550, 900);
  fill(#F8C413);
  quad(x-500, 200, x-300, 200, -300, 900, -500, 900);//200
  fill(#C6590C);
  quad(x-300, 200, x-250, 200, -250, 900, -300, 900);//50
  fill(#F8C413);
  quad(x-250, 200, x-50, 200, -50, 900, -250, 900);//200
  fill(#C6590C);
  quad(x-50, 200, x, 200, 0, 900, -50, 900);//50
  fill(#F8C413);
  quad(x, 200, x+200, 200, 200, 900, 0, 900);//200
  fill(#C6590C);
  quad(x+200, 200, x+250, 200, 250, 900, 200, 900);//50
  fill(#F8C413);
  quad(x+250, 200, x+450, 200, 450, 900, 250, 900);//200 
  fill(#C6590C);
  quad(x+450, 200, x+500, 200, 500, 900, 450, 900);//50
  fill(#F8C413);
  quad(x+500, 200, x+700, 200, 700, 900, 500, 900);//200
  fill(#C6590C);
  quad(x+700, 200, x+750, 200, 750, 900, 700, 900);//50
  fill(#F8C413);
  quad(x+750, 200, x+950, 200, 950, 900, 750, 900);//200
  fill(#C6590C);
  quad(x+950, 200, x+1000, 200, 1000, 900, 950, 900);//50
  fill(#F8C413);
  quad(x+1000, 200, x+1200, 200, 1200, 900, 1000, 900);//200
}
