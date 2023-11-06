size(230, 250);
background(255);
int xW = 20;
int yW = 20;
int Grootte = 20;
int aantalX = 10;
int aantalY = 10;

for(int i = 0; i < aantalX; i++) {
  for(int j = 0; j < aantalY; j++) {
    rect(xW, yW, Grootte, Grootte);
    yW += Grootte;
  }
  yW = 20;
  xW += Grootte;
}
