size(200, 200);
background(100, 10, 125);

int sizeC = 100;

for (int i = 0; i < 5; i++) {
  ellipse(100, 100, sizeC, sizeC);
  println("Grootte van cirkel " + (i + 1) + ": " + sizeC);
  sizeC = sizeC - 25; 
  if (sizeC < 10) {
    sizeC = 10; 
  }
}