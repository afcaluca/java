boolean gevonden;

String[] namen = {"jan", "klaas", "pieter", "peter", "gerda", "troos"};

void setup() {
  gevonden = false;
  for (int i = 0; i < namen.length; i++) {
    // Bestaat de volgende waarde?
    if (namen[i] == "Luca") {
      gevonden = true;
    }
  }

  println(gevonden);
}

void draw(){
  
}
