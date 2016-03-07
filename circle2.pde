class Ball {
  float x;
  float y;
  float radius;
  float xSpeed;
  float ySpeed;
  
  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
  }
  
  void display() {  
    fill(255, 0, 0);
    noStroke();
    ellipse(x, y, radius*2, radius*2);
  }
  void bounce() {
    if(x - radius < 0 || x + radius > width) {
      xSpeed = -xSpeed;
    }
    if(y - radius < 0 || y + radius > height) {
      ySpeed = -ySpeed;
    }
  }
}

Ball b = new Ball();
Ball b2 = new Ball();

void setup() {
 b.radius = 10;
 b2.radius = 4;
 
 b.x = width/2;
 b2.x = width/3;
 
 b.y = height/2;
 b2.y = height/3;
 
 b.xSpeed = 3;
 b2.xSpeed = 5;
 
 b.ySpeed = 1;
 b2.ySpeed = 3;
}
void draw() {
  background(255);
  
  b.display();  
  b.move();
  b.bounce();
  
  b2.display();  
  b2.move();
  b2.bounce();
  
}
