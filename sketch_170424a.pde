PFont font;
void setup() {
 size(480, 120);
 smooth();
 font = loadFont("AGaramondPro-Italic-48.vlw");
 textFont(font);
}
void draw() {
 background(102);
 fill(255,0,0);
 textSize(36);
 text("Ricky Guevara", 25, 60);
 fill(0);
 textSize(18);
 text("Ricky Guevara", 27, 90);
}