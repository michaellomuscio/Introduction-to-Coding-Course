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
	ellipse(mouseX+20, mouseY+20, 20, 20);
	fill(0,255,0);
	ellipse(mouseX-20, mouseY+20, 20, 20);
	fill(0,0,255);
	ellipse(mouseX+20, mouseY-20, 20, 20);
	fill(255);
	ellipse(mouseX-20, mouseY-20, 20, 20);
}
