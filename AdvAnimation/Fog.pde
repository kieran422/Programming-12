class Fog {
  //1. instance
  float x, y, vy, size;

  //2. constructor(s)
  Fog() {
    x = random(width);
    y = random(0,300);
    size = random(75, 100);
  }
  //3. behaviour functions - functions that act on the instance variables of this star and define what actions a star can do.

  void show_Fog() {
    noStroke();
    fill(230, 150);
    circle(x, y, size);
  }

  void act_Fog() {
    size = (int) dist(mouseX, mouseY, x, y)/2;
  }
}//END OF STAR CLASS
