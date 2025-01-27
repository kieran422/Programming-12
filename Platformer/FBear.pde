class FBear extends FGameObject {

  int direction = L;
  int speed = 50;
  int frame = 0;

  FBear(float x, float y) {
    super();
    setPosition (x, y);
    setName ("bear");
    setRotatable(false);
    actionBear = bearWalk;
  }

  void act() {
    animate();
    collide();
    move();
  }

  void animate() {
    if (frame >= actionBear.length) frame = 0;
    if (frameCount % 10 == 0) {
      if (direction == R) attachImage(actionBear[frame]);
      if (direction == L) attachImage(reverseImage(actionBear[frame]));
      frame++;
    }
  }

  void collide() {
    if (isTouching ("wall")) {
      direction *= -1;
      setPosition (getX()+direction*5, getY()) ;
    }
    
    if (actionBear == bearTurn) {
      if (frame == 4) {
        actionBear = bearWalk;
      }
    }
    
    if (isTouching("player")) {
      if (player.getY() < getY()-gridSize/2) {
        world.remove(this);
        enemies.remove(this);
        player.setVelocity(player.getVelocityX(), -300);
      }else{
        lives = lives - 1;
        player.setPosition(0,0);
        reset();
    }
  }
  }

  void move() {
    float vy = getVelocityY();
    setVelocity (speed*direction, vy);
    actionBear = bearWalk;
  }
}
