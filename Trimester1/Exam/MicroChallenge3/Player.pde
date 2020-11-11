class Player{
 float xpos;
 float ypos;
 float size = 5;
 float speed = 4;
 boolean up = false;
 boolean down = false;
 boolean left = false;
 boolean right = false;
 
 Player(float x, float y){
  xpos = x;
  ypos = y;
 }
 
 void display(){
   ellipse(xpos, ypos, size, size);
   
   if(right == true){
    xpos += speed;
   }else if(left == true){
    xpos -= speed;
   }else if(up == true){
    ypos -= speed; 
   }else if(down == true){
     ypos += speed;
   }
   
   if(xpos > width){
    xpos = 0; 
   }else if(xpos < 0){
    xpos = width; 
   }else if(ypos > height){
    ypos = 0; 
   }else if(ypos < 0){
    ypos = height; 
   }
 }
}
