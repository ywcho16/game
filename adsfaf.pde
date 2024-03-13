void Life(float x, float y, float d,int op){
  if(op==0) fill(255);
  else if(op==1) fill(255,0,0);
  else fill(0,255,0);
  strokeWeight(5);
  ellipse(x-3*d,y-3*d,d*5,d*10);
  ellipse(x+3*d,y-3*d,d*5,d*10);
  ellipse(x,y,d*18,d*13);
  strokeWeight(2);
  line(x-d*5,y-3*d,x-2*d,y-4*d);
  line(x+d*5,y-3*d,x+2*d,y-4*d);
  arc(x,y+d*1.5,d*2,d,0,PI);
  fill(0);
  circle(x-d*3,y-d, d*3);
  circle(x+d*3,y-d, d*3);
  fill(255);
  ellipse(x-d*3,y-1.5*d,d*2,d*1.5);
  ellipse(x+d*3,y-1.5*d,d*2,d*1.5);
  arc(x-d*3,y-0.5*d,d*1.5,d,0,PI);
  arc(x+d*3,y-0.5*d,d*1.5,d,0,PI);
}
