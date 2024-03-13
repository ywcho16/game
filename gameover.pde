int delay=0;

void gameover(){
  background(0); if (delay-- < 0); 
  textSize(200);
  text("gameover",100,height/2);
}
