Mover[] myMover;
int n = 50;

void setup() {
  size(600, 600);
  myMover = new Mover[n];
  int i = 0;
  while (i < n) {
    myMover[i] = new Mover();
    i++;
  }
}

void draw() {
  int i = 0;
  while (i < n) {
    myMover[i].act();
    myMover[i].show();
    i++;
  }
}

class Mover {

  //instance avriables
  float x, y;

  //constructor
  Mover() {
    x = width/2;
    y = height/2;
  }

  // behavior functions
  void show() {
    stroke(0);
    fill(random(0,255), random(0,255),random(0,255));
    strokeWeight(5);
    circle(x,y,100);
  }

  void act() {
    x = x + random(-10, 10);
    y = y + random(-10, 10);
  }
}
