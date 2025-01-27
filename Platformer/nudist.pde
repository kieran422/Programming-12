class FNudist extends FGameObject {

  int direction = L;
  int speed = 50;
  int frame = 0;

  FNudist(float x, float y) {
    super();
    setPosition (x, y);
    setName ("nudist");
    setRotatable(false);
    actionNudist1 = nudist1;
  }

  void act() {
    animate();
    collide();
    move();
  }

  void animate() {
    if (frame >= actionNudist1.length) frame = 0;
    if (frameCount % 20 == 0) {
      if (direction == R) attachImage(actionNudist1[frame]);
      if (direction == L) attachImage(reverseImage(actionNudist1[frame]));
      frame++;
    }
  }

  void collide() {
  }

  void move() {
  }
}
