class FBranch2 extends FGameObject {

  int direction = R;
  int speed = 50;
  int frame = 0;

  FBranch2(float x, float y) {
    super(gridSize*3, gridSize);
    setPosition (x, y);
    setName ("branch2");
    setRotatable(false);
    setStatic(true);
  }

  void act() {
    animate();
    collide();
    move();
  }

  void animate() {
    if (direction == L) attachImage(regularBranch);
    if (direction == R) attachImage(reverseImage(regularBranch));
  }

  void collide() {
    if (isTouching("player") && !isTouching("dirt") && !isTouching("leaf") && !isTouching("lb")) {
      lives = lives - 1;
      player.setPosition(0, 0);
      reset();
    }
  }


  void move() {
    float vy = getVelocityY();
    if (player.getX() >= getX()-gridSize*2 && player.getY() >= getY()) {

      setStatic(false);
    }
  }
}
