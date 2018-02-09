class Particula{
 int col;
 float x,y,xi,yi;
 Particula(int col_,float x_,float y_){
  col = col_;
  x = x_;
  y = y_;
  xi = random(10,16);
  yi = random(10,12);
 }
 void display(){
  switch (col){
   case 0: fill(0,250,0); break;
   case 1: fill(0,0,250); break;
   case 2: fill(250,0,0); break;
  }
  noStroke();
  ellipse(x,y,50,50);
  if (x > width){xi = xi*-1;} else{if (x < 0){xi = xi*-1;}}
  if (y > height){yi = yi*-1;} else{if (y < 0){yi = yi*-1;}}
  x += xi;
  y += yi;
 }
}

Particula circulo;

void setup(){
 size(400,400);
 circulo = new Particula(2,random(width),random(height));
}
void draw(){
 background(#CE75B3);
 circulo.display();
}