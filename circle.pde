
void setup() {
  size(500, 500);
  background(255);
}
//first ellipse
 float x = 20;
 float y = 20;
 float radius = 30;
 float xSpeed = 2;
 float ySpeed = -3;
//second ellipse
 float x1 = 20;
 float y1 = 450;
 //since I want them in same size so I did not set up a new radius.
 float vx = 3;
 float vy = 1;
 
 void draw() {
   background(255);
   frameRate(70);
  //first ellipse
   if (x < radius) {
     xSpeed = abs(xSpeed);
   }
   if (y < radius) {
     ySpeed = abs(ySpeed);
   }
   if (x > width-radius) {
     xSpeed = -abs(xSpeed);
   }
   if (y > height-radius) {
     ySpeed = -abs(ySpeed);
   }
   x = x + xSpeed;
   y = y + ySpeed;
   ellipse(x, y, radius, radius);
  //second ellipse
   if (x1 < radius) {
     vx = abs(vx);
   }
   if (y1 < radius) {
     vy = abs(vy);
   }
   if (x1 > width-radius) {
     vx = -abs(vx);
   }
   if (y1 > height-radius) {
     vy = -abs(vy);
   }
   x1 += vx;
   y1 += vy;
   ellipse(x1, y1, radius, radius);
 }
