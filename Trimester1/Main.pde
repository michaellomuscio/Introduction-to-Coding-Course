int count = 15;
Car[] myCars;
Frog player;

boolean up = false;
boolean down = false;
boolean right = false;
boolean left = false;

int test = 0;

void setup(){
  size(1000,700);
  
  //Creates new array of cars
  myCars = new Car[count];
  
  //Initializes each car with specific inputs.
  for(int i = 0; i < count; i++){
  myCars[i] = new Car(random(0,1000), 20 + i*40 ,random(4,14),color(random(0,255),random(0,255),random(0,255)));
  }
  
  //Creates frog.
  player = new Frog(500, 620, color(0,255,0));
}

void draw(){
 background(0);
 
 //Draws array of cars.
 for(int j = 0; j < count; j++){
 myCars[j].display();
 myCars[j].drive();
 }
 
 //Draws frog
 player.display();
 player.hop();
 
 
 //Collision detection
 for(int k = 0; k < count; k++){
 if(player.gety() == myCars[k].gety() && myCars[k].getx() + 25 >= player.getx() && myCars[k].getx() + 25 <= player.getx() + 50){
   player.setx(500);
   player.sety(620);
   }
 }
}

void keyPressed(){
  if(keyCode == UP){
   up = true;
 }else if(keyCode == DOWN){
   down = true; 
 }else if(keyCode == RIGHT){
   right = true; 
 }else if(keyCode == LEFT){
   left = true; 
 }
}
