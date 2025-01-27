class FAttackBranch extends FGameObject {

  int direction = R;
  int speed = 500;
  int frame = 0;
  PImage[] actionBranch;

  FAttackBranch(float x, float y) {
    super(gridSize, gridSize*3);
    setPosition (x, y);
    setRotatable(false);
    setStatic(true);
    actionBranch = branchStatic;
  }

  void act() {
    animate();
    collide();
    move();
  }

  void animate() {
    if (frame >= actionBranch.length) frame = 0;
    if (frameCount % 5 == 0) {
      if (direction == R) attachImage(actionBranch[frame]);
      if (direction == L) attachImage(reverseImage(actionBranch[frame]));
      frame++;
    }
  }

  void collide() {
    if (isTouching("player")) {
      if (player.getY() < getY()-gridSize/2) {
        world.remove(this);
        enemies.remove(this);
        player.setVelocity(player.getVelocityX(), -300);
      } else {
        lives = lives - 1;
        reset();
        player.setPosition(0, 0);
      }
    }
    if (isTouching("dirt2")) {
      actionBranch = branchWalk;
      float vy = getVelocityY();
      setVelocity (500, vy);
    }
    if (isTouching ("wall")) {
      direction *= -1;
      setPosition (getX()+direction*100, getY());
    }
    if (isTouching ("orb")) {
      world.remove(this);
        enemies.remove(this);
    }
  }

  void move() {
    float vy = getVelocityY();
    if (player.getX() >= getX() && player.getY() >= getY()) {
      setStatic(false);
      if (isTouching("dirt2")) {
        setVelocity (speed*direction, vy);
      }
    }
  }
}
