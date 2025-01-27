class FHiker extends FGameObject {

  int direction = L;
  int speed = 50;
  int frame = 0;
  PImage[] actionHiker;

  FHiker(float x, float y) {
    super();
    setPosition (x, y);
    setName ("hiker");
    setRotatable(false);
    actionHiker = hikerShake;
  }

  void act() {
    animate();
    collide();
    move();
  }

  void animate() {
    if (frame >= actionHiker.length) frame = 0;
    if (frameCount % 5 == 0) {
      if (direction == R) attachImage(actionHiker[frame]);
      if (direction == L) attachImage(reverseImage(actionHiker[frame]));
      frame++;
    }
  }

  void collide() {
    if (isTouching ("wall")) {
      actionHiker = hikerShake;
    }

    if (isTouching("player")) {
      lives = lives - 1;
      player.setPosition(0, 0);
      reset();
    }
    if (isTouching("branch2")) {
      world.remove(this);
      enemies.remove(this);
    }
  }

  void move() {
    float vy = getVelocityY();
    if (player.getX() > getX() && player.direction == R) {
      actionHiker = hikerWalk;
      direction = R;
      setVelocity (speed*direction, vy);
    }
    if (player.getX() > getX() && player.direction == L) {
      actionHiker = hikerShake;
    }
    if (player.getX() < getX() && player.direction == L) {
      actionHiker = hikerWalk;
      direction = L;
      setVelocity (speed*direction, vy);
    }
    if (player.getX() < getX() && player.direction == R) {
      actionHiker = hikerShake;
    }
  }
}
