PImage img;
float size = 1;
int angle = 0;

void setup() {
  size(960, 540);
  img = loadImage("DERP_FRIEZA.jpg");
  background(192);
 }
 
 void draw() {
   imageMode(CENTER);
   image(img, 960/2, 540/2, 960*size, 540*size);
    if (keyPressed) { // If it’s a coded key
 if ((key == 'a' )||(key == 'A')) { 
 tint(0, 153, 204);
 } else if ((key == 's')||(key == 's')) { 
 tint(255, 0, 0);
 } else if ((key == 'd')||(key == 'D')) {
 tint(0, 255, 0);
 } else if ((key == 'w')||(key == 'W')) {
 noTint();
 }
 } else if ((key == 'q')||(key == 'Q')) {
 tint(133,192,255);
 }
 if (keyPressed && (key == CODED)) { // If it’s a coded key
 if (keyCode == UP) { 
 size +=2;
 } else if (keyCode == DOWN) { 
 size +=-2;
 }
 if (keyCode == LEFT) { 
  background(192);
  translate(width, height);
  angle -= 3;
  rotate(radians(angle));
  image(img, 0, 0, width/2, height/2);
 }else if (keyCode == RIGHT) { 
 background(192);
 translate(width/2, height/2);
 angle += 3;
 rotate(radians(angle));
 image(img, 0, 0, width, height);
 }
 }
}