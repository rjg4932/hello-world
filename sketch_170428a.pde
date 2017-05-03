float x, y, speedX, speedY;
float diam = 20;
float rectSize = 200;
int lives=5;
int score= 0;
void setup() {
  size(1000, 800);
  fill(0, 255, 0);
  reset();
}

void reset() {
  x = width/2;
  y = height/2;
  speedX = random(3, 5);
  speedY = random(3, 5);
}

void draw() { 
  background(0);
  
  int s = second(); 
  int m = minute(); 
  int h = hour(); 
  textSize(20);
  text(h+":"+m+":"+s, 900, 50);
  text("Points"+score, 50, 50);
  textSize(80);
  fill(255,0,0);
  text("P",440, 70);
  fill(0,250,0);
  text("O",480,70);
  fill(249,13,250);
  text("N",530,70);
  fill(0,0,250);
  text("G",580,70);
  
  fill(255);
  ellipse(x, y, diam, diam);

  rect(0, 0, 20, height);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);
 

  x += speedX;
  y += speedY;

  // if ball hits movable bar, invert X direction
  if ( x > width-30 && x < width -20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
    speedX = speedX * -1;
    score = score+1;
   
  } 

  // if ball hits wall, change direction of X
  if (x < 25) {
    speedX *= -1.1;
    speedY *= 1.1;
    x += speedX;
  }


  // if ball hits up or down, change direction of Y   
  if ( y > height || y < 0 ) {
    speedY *= -1;
  }
}

void mousePressed() {
  reset();
}