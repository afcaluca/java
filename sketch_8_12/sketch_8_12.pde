size(230, 250);
background(255);
int xW = 20;
int yW = 20;
int Grootte = 20;
int aantalX = 10;
int aantalY = 10;
boolean isWit = true;

for (int i = 0; i < aantalX; i++) {
  for (int j = 0; j < aantalY; j++) {
    if (isWit) {
      fill(255);
    } else {
      fill(0); 
    }
    rect(xW, yW, Grootte, Grootte);
    yW += Grootte;
    isWit = !isWit;
  }
  isWit = !isWit; 
  yW = 20;
  xW += Grootte;
}
