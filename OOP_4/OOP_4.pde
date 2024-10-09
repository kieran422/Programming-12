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

  //instance variables
  float x,y,r;
  
  //constructor
  Mover() {
    x = (random(200,400));
    y = (random(200,400));
    r = (random(0,255));
  }

  // behavior functions
  void show() {
    stroke(0);
    strokeWeight(5);
    circle(x,y,r);
  }

  void act() {
    x = x + random(-2, 2);
    y = y + random(-2, 2); 
  }
}
