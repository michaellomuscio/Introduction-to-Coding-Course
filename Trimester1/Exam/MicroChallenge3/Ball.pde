class Ball{
 float xpos;
 float ypos;
 float directionX = random(-2,2);
 float directionY = random(-2,2);
 color c1 = color(random(255), random(255), random(255));
 boolean alive = true;
 
 Ball(float x, float y){
  xpos = x;
  ypos = y;
 }
 
 void display(){
   fill(c1);
   ellipse(xpos, ypos, 10, 10);
   
   if(alive == true){
     xpos += directionX;
     ypos += directionY;
   
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
}
