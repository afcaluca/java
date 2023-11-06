size(2000, 2000);
background(100, 10, 125);

int sizeC = 1250;

for (int i = 0; i < 50; i++) {
  ellipse(1000, 500, sizeC, sizeC);
  println("Grootte van cirkel " + (i + 1) + ": " + sizeC);
  sizeC = sizeC - 25; 
  if (sizeC < 10) {
sizeC = 10;
  }
}
