Ball[] balls;
int count = 1000;

int eaten = 0;
float timer = 0;
boolean stopTimer = false;

Player player;

PFont myFont;
PFont myFont2;
String str = "Score: ";
String str2 = "Time: ";

void setup(){
 size(600,600);
 
 balls = new Ball[count];
 
 for(int i = 0; i < count; i++){
  balls[i] = new Ball(random(10,550), 10);
  }
  
  player = new Player(width/2, height/2);
  
  myFont = createFont("Anonymous-48", 12);
  textFont(myFont);
  
  myFont2 = createFont("Anonymous-48", 30);
}

void draw(){
  background(255);
  
  for(int i = 0; i < count; i++){
    balls[i].display();
  }
  
  player.display();
  eat();
  
  fill(0);
  textFont(myFont);
  str = "Eaten " + eaten;
  text(str, 0, 20);
  
  if(eaten == count){ 
      if(stopTimer == false){
        timer = millis()*.001;
      }
      stopTimer = true;
      fill(255,0,0);
      textFont(myFont2);
      str2 = "TIME: " + timer;
      text(str2, 200, 300);
  }
  
}

void keyPressed(){
 if(keyCode == UP){
  player.up = true; 
 }else if(keyCode == DOWN){
   player.down = true;
 }else if(keyCode == LEFT){
   player.left = true;
 }else if(keyCode == RIGHT){
   player.right = true;
 }
}

void keyReleased(){
 if(keyCode == UP){
  player.up = false; 
 }else if(keyCode == DOWN){
   player.down = false;
 }else if(keyCode == LEFT){
   player.left = false;
 }else if(keyCode == RIGHT){
   player.right = false;
 }
}

void eat(){
   for(int i = 0; i < count; i++){
    if(dist(player.xpos, player.ypos, balls[i].xpos, balls[i].ypos) <= 5 + player.size/2){
     balls[i].alive = false;
     player.size += .7;
     balls[i].xpos = -999;
     balls[i].ypos = -999;
     balls[i].directionX = 0;
     balls[i].directionY = 0;
     eaten += 1;
    }
  } 
}
