class Grass {

  //instance variables
  float x, y, w, z;

  //constructor
  Grass() {
    x = random(width);
    y = random(500,800);
    z = 1;
    w = 20;
  }

  //behaviour functions
  void show() {
    stroke(0);
    strokeWeight(2);
    fill(0,255,0);
    ellipse(x, y, w, w/2);
  }

  void shrink() {
    if (w > 0) {
      y = y - 4;
      w = w - 2;
    }
  }
}
