void tekenVierkant(int x, int y, int zijdelengte, color kleur) {

  beginShape();
  fill(kleur);

  vertex(x, y);
  vertex(x + zijdelengte, y);
  vertex(x + zijdelengte, y + zijdelengte);
  vertex(x, y + zijdelengte);

  endShape(CLOSE);
}

void setup() {
  size(400, 400);
  background(255);

  tekenVierkant(100, 100, 50, color(255, 0, 0));
}

void draw() {
}
