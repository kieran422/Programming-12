class FLazerNudist extends FGameObject {

  int direction = R;
  int speed = 50;
  int frame = 0;

  FLazerNudist(float x, float y) {
    super();
    setPosition (x, y);
    setRotatable(false);
    setStatic(false);
  }

  void act() {
    animate();
    collide();
    move();
    attack();
  }

  void attack() {
    float vy = getVelocityY();
    if (player.getX() >= getX()-500 && player.getX() <= getX()+500 && frameCount % 70 == 0) {
      FBox lazer = new FBox(gridSize/2, gridSize/2);
      lazer.setPosition(getX(), getY()-gridSize);
      lazer.attachImage(orb);
      lazer.setVelocity((player.getX()-getX())*2, 200);
      //lazer.setAngularVelocity(50);
      lazer.setDensity(0.2);
      lazer.setSensor(true);
      world.add(lazer);
      lazer.setName("orb");
    }
  }
  void animate() {
    if (frame >= lazerNudist.length) frame = 0;
    if (frameCount % 8 == 0) {
      if (direction == R) attachImage(lazerNudist[frame]);
      if (direction == L) attachImage(reverseImage(lazerNudist[frame]));
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
        player.setPosition(0, 0);
        reset();
      }
    }
  }

  void move() {
    float vy = getVelocityY();
  }
}
