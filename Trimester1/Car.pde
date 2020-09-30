class Car{
 float xpos;
 float ypos;
 float speed;
 color c1;
 float carWidth = 50;
 float carHeight = 30;
 
 Car(float tempXpos, float tempYpos, float tempSpeed, color tempC1){
   xpos = tempXpos;
   ypos = tempYpos;
   speed = tempSpeed;
   c1 = tempC1;
 }
 
 void display(){
  rectMode(CENTER); 
  fill(255,255,255);
  rect(xpos - carWidth/4, ypos - carHeight/2, carWidth/3.33, carHeight/3);
  rect(xpos - carWidth/4, ypos + carHeight/2, carWidth/3.33, carHeight/3);
  rect(xpos + carWidth/4, ypos - carHeight/2, carWidth/3.33, carHeight/3);
  rect(xpos + carWidth/4, ypos + carHeight/2, carWidth/3.33, carHeight/3);
  
  fill(c1);
  rect(xpos, ypos, carWidth, carHeight);

 }
 
 void drive(){
   xpos = xpos + speed;
   
   if(xpos >  width + carWidth/2){
     xpos = -carWidth/2;
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
