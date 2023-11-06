int spelerX, spelerY;
int[] bomX, bomY; // Array voor bomposities
int score;
PImage objectImage;
PImage deVloer;
PImage LUCA;
PImage GAZA;
int vloerY;
boolean introAfgespeeld = false;
boolean gameover = false;
int aantalBommen = 3; // Aantal bommen op het scherm

void setup() {
  size(600, 300);
  spelerX = width / 2;
  spelerY = height - 20;
  bomX = new int[aantalBommen]; // Array voor bomposities
  bomY = new int[aantalBommen]; // Array voor bomposities
  vloerY = height - 30;
  score = 0;
  frameRate(60);

  objectImage = loadImage("nuke.png");
  deVloer = loadImage("grass.JPEG");
  LUCA = loadImage("LUCA.PNG");
  GAZA = loadImage("GAZA.JPEG");
  GAZA.resize(600, 300);
}

void draw() {
  background(GAZA);

  if (!introAfgespeeld) {
    // ... (onveranderd)
  } else if (!gameover) {
    image(deVloer, 0, vloerY, width, 30);
    image(LUCA, spelerX - 20, spelerY - 20, 40, 40);
    
    // Itereer over de bommen en beweeg ze omlaag
    for (int i = 0; i < aantalBommen; i++) {
      image(objectImage, bomX[i], bomY[i], 40, 40);
      bomY[i] += 10;
      
      if (bomY[i] > vloerY - 20 && bomX[i] > spelerX - 20 && bomX[i] < spelerX + 20) {
        background(255, 0, 0);
        textSize(16);
        fill(0);
        text("Game Over, je mag niet geraakt worden!", width/2 - 100, height/2);
        noLoop();
        gameover = true;
      }
      
      if (bomY[i] > height) {
        bomX[i] = (int) random(width);
        bomY[i] = 0;
        score++;
      }
    }
    
    textSize(25);
    fill(0);
    text("Score: " + score, 10, 20);
  }
}

void keyPressed() {
  if (!gameover) {
    if (!introAfgespeeld) {
      introAfgespeeld = true;
    }
    if (keyCode == LEFT) {
      spelerX -= 20;
    } else if (keyCode == RIGHT) {
      spelerX += 20;
    }
  }
}

void keyReleased() {
  if (keyCode == LEFT || keyCode == RIGHT) {
    spelerX = constrain(spelerX, 10, width - 10);
  }
}
