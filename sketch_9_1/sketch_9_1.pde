void setup() {
  float num1 = 5.3; 
  float num2 = 6.9;

  float gemiddelde = berekenGemiddelde(num1, num2);
  
  println("Het gemiddelde van " + num1 + " en " + num2 + " is: " + gemiddelde);
}

float berekenGemiddelde(float getal1, float getal2) {
  return (getal1 + getal2) / 2.0;
}
