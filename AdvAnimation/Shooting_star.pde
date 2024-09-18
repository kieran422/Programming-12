class Rain {

  //instance variables or fields
  float x, y, vx, vy, size;

  //constructor: special function that defines how a object of this class is born. defines initial values for fields.
  Rain() {
    x = random(0, width);
    y = random(0, height);
    vx = 0; 
    vy = random(1, 5);
    size = vy;
  } 
  //behaviour functions: these define what a star does
  void show() {
    fill(0,0,100);
    noStroke();
    circle(x,y,size);
  }

  void act() {
    y = y + vy;
    if (y > height+size) {
      y = size;
  }
}
}
