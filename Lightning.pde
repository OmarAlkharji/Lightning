int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int R = (int)(Math.random()*256);
int G = (int)(Math.random()*256);
int B= (int)(Math.random()*256);
void setup()
{
  size(300,300);
  background(0);
  strokeWeight(2);
  stroke(R, G, B);
}
void draw()
{
 while (endY < 301)
 {
   endY = startY + (int)(Math.random()*10);
   endX = startX + (int)(Math.random()*20-10);  
   line(startX,startY,endX,endY);
   startY = endY;
   startX = endX;
 }
 insigna();
}
void mousePressed()
{
 startX = (int)(Math.random()*300);
 startY = 0;
 endX = 150;
 endY = 0;
 R = (int)(Math.random()*256);
 G = (int)(Math.random()*256);
 B = (int)(Math.random()*256);
 strokeWeight(2);
 stroke (R,G,B);
}

void insigna(){
  strokeWeight(5);
  stroke(255,0,0);
  fill(255,255,255);
  ellipse(150,150,150,150);
  noStroke();
  fill(226,234,0);
  triangle(100,150,200,70,150,170);
  triangle(150,150,100,230,200,170);
}
