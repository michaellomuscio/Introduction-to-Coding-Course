PVector position;
PVector direction;
PVector velocity;
PVector acceleration;

Bullet bullet;

void setup(){
  size(600,600);
  position = new PVector(0,height);
  direction = new PVector(0,-1);
  bullet = new Bullet(-100,-100);
}

void draw(){
  background(255);
  
  stroke(0);
  strokeWeight(5);
  direction.setMag(30);
  line(position.x, position.y, position.x + direction.x , position.y + direction.y);
  
  bullet.display();
  
  if(position.x < 0){
   position.x = width; 
  }else if(position.x > width){
   position.x = 0; 
  }else if(position.y > height){
   position.y = 0; 
  }else if(position.y < 0){
   position.y = height; 
  }
}

void keyPressed(){
   if(keyCode == LEFT){
     direction.rotate(-.1);
  }else if(keyCode == RIGHT){
     direction.rotate(.1);
  }
  
  if(key == ' '){
   bullet.position.x = position.x + direction.x;
   bullet.position.y = position.y + direction.y;
   bullet.setDirection(direction);
   bullet.shoot();
  }
}
