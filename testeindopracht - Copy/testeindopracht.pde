int spelerX, spelerY; // X- en Y-coördinaten van de speler
int[] bomX, bomY; // Arrays voor de X- en Y-coördinaten van de bommen
int score; // Score van de speler
PImage objectImage; // Afbeelding voor de bommen
PImage deVloer; // Afbeelding voor de vloer
PImage LUCA; // Afbeelding voor de speler (LUCA)
PImage GAZA; // Achtergrondafbeelding
int vloerY; // Y-coördinaat van de vloer
boolean introAfgespeeld = false; // Boolean om de introstatus bij te houden
boolean gameover = false; // Boolean om de status van het spel bij te houden
int aantalBommen = 2; // Het aantal bommen op het scherm

void setup() {
  size(600, 300); // Venstergrootte
  spelerX = (width / 40) * 20;//width / 2; // Initieel X-positie van de speler (in het midden van het venster)
  spelerY = height - 20; // Initieel Y-positie van de speler (dichtbij onderkant van het venster)
  bomX = new int[aantalBommen]; // Array voor X positie van de bommen
  bomY = new int[aantalBommen]; // Array voor Y positie van de bommen
  vloerY = height - 30; // Y-positie van de vloer
  score = 0; // Initieel scores van de speler
  frameRate(60); // Fps

  objectImage = loadImage("nuke.png"); // Laden van de afbeelding voor de bommen
  deVloer = loadImage("grass.JPEG"); // Laden van de afbeelding voor de vloer
  LUCA = loadImage("LUCA.PNG"); // Laden van de afbeelding voor de speler (mijn hoofd)
  GAZA = loadImage("GAZA.JPEG"); // Laden van de achtergrondafbeelding
  GAZA.resize(600, 300); // Aanpassen van de grootte van de achtergrondafbeelding
}

void draw() {
  background(GAZA); // Achtergrond instellen

  if (!introAfgespeeld) {
    // Intro wordt getoond als de intro nog niet is afgespeeld
    textSize(16); // Tekstgrootte
    fill(0); // Tekstkleur 
    text("Nederland wordt aangevallen door Rusland, zorg dat Luca de bommen ontwijkt!", width/2 - 250, height/2);
    text("Druk op een toets om te beginnen", width/2 - 110, height/2 + 20);
  } else if (!gameover) {
    // Het spel wordt weergegeven als de intro is afgespeeld en het spel niet voorbij is
    image(deVloer, 0, vloerY, width, 30); // Weergeven van de vloerafbeelding
    image(LUCA, spelerX - 20, spelerY - 20, 40, 40); // Weergeven van de speler (LUCA)
    
    // herhalen over de bommen en hun posities bijwerken
    for (int i = 0; i < aantalBommen; i++) {
      image(objectImage, bomX[i], bomY[i], 40, 40); // Weergeven van de bommen
      bomY[i] += 10; // Beweging van de bommen naar beneden

      if (bomY[i] > vloerY - 20 && bomX[i] > spelerX - 20 && bomX[i] < spelerX + 20) {
        // Controleren op botsing  bom en speler
        background(255, 0, 0); // Achtergrond wordt rood
        textSize(16); // Tekstgrootte
        fill(0); // Tekstkleur 
        text("Game Over, je mag niet geraakt worden!", width/2 - 100, height/2); // tekst wordt laten zien
        noLoop(); // Stoppen met updaten van het spel
        gameover = true; // Het spel is voorbij
      }
      
      if (bomY[i] > height) {
        // Als een bom buiten het scherm valt, wordt deze opnieuw gespawnet
        bomX[i] = (int) random(width);
        bomY[i] = 0;
        score++; // Score wordt bijgewerkt
      }
    }
    
    textSize(25); // Tekstgrootte
    fill(0); // Tekstkleur
    text("Score: " + score, 10, 20); // Weergeven van de score
  }
}

void keyPressed() {
  if (!gameover) {
    if (!introAfgespeeld) {
      introAfgespeeld = true; // Intro wordt gemarkeerd als afgespeeld
    }
    if (keyCode == LEFT) {
      spelerX -= 20; // Speler beweegt naar links
      spelerX = constrain(spelerX, 20, width - 20);
    } else if (keyCode == RIGHT) {
      spelerX += 20; // Speler beweegt naar rechts
      spelerX = constrain(spelerX, 20, width - 20);
    }
  }
}

void keyReleased() {
  if (keyCode == LEFT || keyCode == RIGHT) {
    spelerX = constrain(spelerX, 20, width - 20); // zorgt dat de speler binnen het scherm blijft
  }
}
