class Bullet{
 PVector position = new PVector(0,0);
 PVector velocity = new PVector(0,0);
 PVector acceleration = new PVector(0,.12);
 float speed = 10;
 float diameter = 10;
 float radius = diameter / 2;
 boolean shot = false;
 
 Bullet(float xpos, float ypos){
   position.x = xpos;
   position.y = ypos;
 }
 
 void display(){
    noStroke();
    fill(255,0,0);
    ellipse(position.x, position.y, diameter, diameter);
  
    if(shot == true){
      position.add(velocity);
      velocity.add(acceleration);
    }
    
    if(position.y > height){
     this.shot = false;
     velocity.x = 0;
     velocity.y = 0;
    }
 }
 
 void setDirection(PVector direction){
   if(shot == false){
    velocity.x = direction.x;
    velocity.y = direction.y;
    velocity.normalize();
    velocity.setMag(speed);
   }
 }
 
 void shoot(){
  shot = true;
 }
}
