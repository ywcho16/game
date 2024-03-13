float [] a, b, c, vx, vy; int k;
void setup() {
  size(1000, 800);
  a = new float[10];
  b = new float[10];
  c = new float[10];
  vx = new float[10];
  vy = new float[10];
  k = 10;
  for (int i=0; i<9; i++) {
    a[i] = random(width);
    b[i] = random(0,100);
    c[i] = random(5, 10);
    vx[i] = random(3, 5);
    vy[i] = random(3, 5);
  }
  a[9] = 500; b[9] = 750; c[9] = 5;
}
void draw() {
  background(0, 255, 255);
  Life(a[9],b[9],c[9],k);
  for (int i=0; i<9; i++) {
    b[i] += vy[i];
    if (b[i]<0 || b[i]>height) {
      a[i] = random(width); b[i] = random(0,100);
    }
    if (i<4) poro(a[i], b[i], c[i]);
    else if(i<7) reaver(a[i], b[i], c[i]);
    else if(i<9) bear(a[i],b[i],c[i]);
  }
  collide();
}    
void keyPressed() {
 if(key == 'a') a[9] -= 10;
 else if(key == 'd') a[9] += 10;
 else if(key == 'w') b[9] -= 0;
 else if(key == 's') b[9] += 0;
 }
 
 void collide(){
  for(int i=0;i<9;i++){
    float x = a[i]-a[9];
    float y = b[i]-b[9];
    float d = sqrt(x*x+y*y);
    if(d<60){
      gameover();
      delay(80);
    }
  }
}
