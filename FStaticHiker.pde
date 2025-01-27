class FSHiker extends FGameObject {

  int direction = L;
  int speed = 50;
  int frame = 0;

  FSHiker(float x, float y) {
    super();
    setPosition (x, y);
    setName ("shiker");
    setRotatable(false);
    actionShiker = shikerShake;
  }

  void act() {
    animate();
    collide();
    move();
  }

  void animate() {
    if (frame >= actionShiker.length) frame = 0;
    if (frameCount % 5 == 0) {
      if (direction == R) attachImage(actionShiker[frame]);
      if (direction == L) attachImage(reverseImage(actionShiker[frame]));
      frame++;
    }
  }

  void collide() {
    if (isTouching("branch2")) {
      world.remove(this);
      enemies.remove(this);
    }

    if (isTouching("player")) {
      lives = lives - 1;
      player.setPosition(0, 0);
      reset();
    }
  }

  void move() {
  }
}
