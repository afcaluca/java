void setup(){

  size(500,500);
  boom(100,85,30,100);
}

void boom(int x1, int y1, int x2, int y2){

rect(y1,y1,x2,y2);
ellipse(x1,y1,x1,y2);
}
