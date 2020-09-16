float positionX = 200, positionY = 500, size = 340, speed = 20;
boolean walking = false;

void setup(){
  background(255);
  size(1000, 1000);
  fill(180, 0, 255);
}

void draw(){
  background(255);
  if(walking){
    circle(positionX, positionY, size);
    positionX += speed;
  }
  if(positionX - size/2 > width){
    positionX = 200;
    walking = false;
  }
}
void keyReleased(){
  if(key == ' '){
    walking = true;
  }
}
