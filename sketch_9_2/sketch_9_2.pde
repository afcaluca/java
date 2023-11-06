void setup() {
  float shit = 5.3;
  float shit2 = 6.9;

  float gemiddelde = berekenGemiddelde(shit, shit2);

  println("Het gemiddelde van " + shit + " en " + shit2 + " is: " + gemiddelde);
}

float berekenGemiddelde(float getal1, float getal2) {
  return (getal1 + getal2) / 2.0;
}
