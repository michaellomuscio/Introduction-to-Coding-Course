//Processing Code
//Created by Dr. Michael Lomuscio
//lomuscio.michael@gmail.com
//For use at Rabun Gap-Nacoochee School
//https://www.rabungap.org/
//Introduction to Coding Course

void setup(){
 size(600, 600); 
}

void draw(){

}

void mousePressed(){
  background(255, 255, 255);
  fill(255, 0, 0);
  ellipse(width/2, height/2, 100, 100);
}

void keyPressed(){
  background(255, 255, 255);
  fill(0,255, 255);
  rect(width/2-50, height/2-50, 100, 100);
}
