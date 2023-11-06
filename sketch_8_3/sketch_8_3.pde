void setup() {
size(200,500);
stroke(0);
int ruimte = 20;

for (int i = 0; i < 10; i++) {
int x = i * ruimte;

line(x, 0, x, height);
  }
}
