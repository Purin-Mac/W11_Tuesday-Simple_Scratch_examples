float positionX = 200, positionY = 500, size = 100, speed = 20, angle = 0;
void setup(){
  background(255);
  size(1000, 1000);
  rect(positionX, positionY, size, size);
  fill(255, 255, 0);
}

void draw(){
  background(255);
  if(positionY < 0){
    positionY = height;
  }
  else{
    positionY -= speed;
    float newOriginX = positionX+(size/2), newOriginY = positionY+(size/2);
    translate(newOriginX, newOriginY);
    angle += PI/80;
    rotate(angle);
    translate(-newOriginX, -newOriginY);
    rect(positionX, positionY, size, size);
  }
}
