int x = 0;

void setup() {
 size(480, 480);

}
void draw() {
 if (keyPressed && (key == CODED)) { // If it’s a coded key
 if (keyCode == LEFT) { // If it’s the left arrow
 x-=10;
 } else if (keyCode == RIGHT) { // If it’s the right arrow
 x+=10;
 }
 }
beginShape();
fill(255, 0, 0);
if (keyPressed) {
  fill(0);
}
vertex(100+x, 480);
vertex(140+x, 400);
vertex(110+x, 400);
vertex(240+x, 240);
vertex(370+x, 400);
vertex(340+x, 400);
vertex(380+x, 480);
endShape();

fill(255);
ellipse(200+x, 330, 20, 20);
ellipse(280+x, 330, 20, 20);

float mx = map(mouseX, 0, width, -5, 5); 
float my = map(mouseY, 0, height, -5,5);
fill(0);
ellipse(200+x+mx, 330+my, 5, 5);
ellipse(280+x+mx, 330+my, 5, 5);

fill(113, 83, 88);
if (keyPressed) {
  fill(255);
}
arc(240+x, 420, 80, 80, 0, 180);

fill(255, 0, 0);
rect(200+x, 420, 80, 10);
}