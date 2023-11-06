void setup(){

  size(200,200);
tekenDriehoek(10,100,100,10,10,10);

}


void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
  // teken een driehoek m.b.v. de meegegeven data (parameters)
line(x1,y1,x2,y2);
line(x2,y2,x3,y3);
line(x3,y3,x1,y1);
}
