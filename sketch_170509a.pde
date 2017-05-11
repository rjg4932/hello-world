//Ricky Guevara   May 9th, 2017

JitterBug jit;
JitterBug bug;
Beetle Beetle;

void setup() {
  size(480, 120);
  smooth();
  jit = new JitterBug(width * 0.33, height/2, 50);
  bug = new JitterBug(width * 0.66, height/2, 10);
  Beetle = new Beetle(220, 70, 260 , 70, 240, 50);
}

void draw() {
  jit.move();
  jit.display();
  jit.setColor();
  jit.setSize(100);
  bug.move();
  bug.display();
  bug.setColor();
  bug.setSize(5);
  Beetle.move();
  Beetle.display();
  Beetle.setColor();
  Beetle.setSize();
} 