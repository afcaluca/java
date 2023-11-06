float playerX = 200;
float playerY = 200;

void setup(){
  size(400,400);
}

void draw(){
  background(0,255,255);
  ellipse(playerX,playerY,40,40);
  if(key == 'd' ){
    playerX += 10;
  }
  if(key == 'a' ){
    playerX -= 10;
  }
  if(key == 'w' ){
    playerY -= 10;
}
  playerY += 1;
  if(playerY > 380){
    playerY = 380;
  }
}
