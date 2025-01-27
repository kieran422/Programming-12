class FBaby extends FGameObject {

  int direction = R;
  int speed = 50;
  int frame = 0;

  FBaby(float x, float y) {
    super();
    setPosition (x, y);
    setName ("baby");
    setRotatable(false);
    actionBaby = baby;
  }

  void act() {
    animate();
    collide();
    move();
  }

  void animate() {
    if (frame >= actionBaby.length) frame = 0;
    if (frameCount % 5 == 0) {
      if (direction == R) attachImage(actionBaby[frame]);
      if (direction == L) attachImage(reverseImage(actionBaby[frame]));
      frame++;
    }
  }

  void collide() {
  }

  void move() {
  }
}
