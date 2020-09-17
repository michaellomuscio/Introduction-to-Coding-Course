//Processing Code
//Created by Dr. Michael Lomuscio
//lomuscio.michael@gmail.com
//For use at Rabun Gap-Nacoochee School
//https://www.rabungap.org/
//Introduction to Coding Course

void setup() {
	size(500,500);
	background(255);

}

void draw() {
	background(255);
	fill(255,0,0);
	triangle(0,0,mouseX,mouseY,250,500);
	fill(0,255,0);
	triangle(0,0,mouseX,mouseY,500,0);
	fill(0,0,255);
	triangle(250,500,mouseX,mouseY,500,0);
}
