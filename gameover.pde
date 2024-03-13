int state=0;
int delay=0;

void gameover(){
  background(0); if (delay-- < 0) state = 0; 
  textSize(200);
  text("gameover",100,height/2);
}
