size(1900, 800);
background(255, 255, 255);

int sizeC = 500;

for (int i = 0; i < 50; i++) {
ellipse(1900 - sizeC/2, 800 - sizeC/2, sizeC,sizeC);
println("Grootte van cirkel " + (i + 1) + ": " + sizeC);
sizeC = sizeC - 10;
if (sizeC < 10) {
sizeC = 10;
}
}
