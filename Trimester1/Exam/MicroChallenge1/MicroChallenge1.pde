Ball[] balls;
int count = 100;

void setup(){
 size(600,600);
 
 balls = new Ball[count];
 
 for(int i = 0; i < count; i++){
  balls[i] = new Ball(random(10,550), 10);
  }
}

void draw(){
  background(255);
  
  for(int i = 0; i < count; i++){
    balls[i].display();
  }
}
