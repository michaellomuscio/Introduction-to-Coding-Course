class Frog{
 float xpos;
 float ypos;
 color c1;
 
 Frog(float tempXpos, float tempYpos, color tempC1){
   xpos = tempXpos;
   ypos = tempYpos;
   c1 = tempC1;
 }
 
 //Display draws frog to the screen.
 void display(){
  fill(c1);
  rect(xpos, ypos,40,40);
 }
 
 //Hop makes the frog move when keys are pressed.
 void hop(){
     if(up == true){
       ypos -= 40;
       up = false;
     }else if(down == true){
       ypos += 40; 
       down = false;
     }else if(right == true){
       xpos += 40;
       right = false;
     }else if(left == true){
       xpos -= 40; 
       left = false;
     }
 }
 
 float getx(){
  return xpos; 
 }
 
 float gety(){
  return ypos; 
 }
 
 void setx(float tempx){
  xpos = tempx; 
 }
 
 void sety(float tempy){
  ypos = tempy; 
 }
}
