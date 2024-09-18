class Ripple {

  //instance variables
  float x, y, size, alpha;

  //constructor
  Ripple() {
    x = random(0,400);
    y = random(600,800);
    size = random(100);
  }

  //behaviour functions
  void show() {
    noFill();
    alpha = map (size, 0, 200, 255, 0);
    stroke(alpha);
    ellipse(x, y, size, size/2);
  }

  void act() {
    size = size + 2;
    if (size >= 50) {
      x = random(0,400);
      y = random(600,800);
      size = 0;
    }
  }
}
