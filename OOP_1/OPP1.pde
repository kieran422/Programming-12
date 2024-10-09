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
  float x,y,r,g,b;
  
  //constructor
  Mover() {
    x = width/2;
    y = height/2;
    r = (random(0,255));
    g = (random(0,255));
    b = (random(0,255));
  }

  // behavior functions
  void show() {
    fill(r,g,b);
    stroke(0);
    strokeWeight(5);
    circle(x,y,100);
  }

  void act() {
    x = x + random(-2, 2);
    y = y + random(-2, 2); 
  }
}
