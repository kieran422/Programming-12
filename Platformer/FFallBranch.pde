class FBranch extends FGameObject {

  int direction = L;
  int speed = 50;
  int frame = 0;

  FBranch(float x, float y) {
    super(gridSize*3, gridSize);
    setPosition (x, y);
    attachImage(regularBranch);
    setName ("branch");
    setRotatable(false);
    setStatic(true);
  }

  void act() {
    animate();
    collide();
    move();
  }

  void animate() {
  }

  void collide() {
    float vy = getVelocityY();
    if (isTouching("player") && !isTouching("dirt") && !isTouching("leaf") && vy >= 3) {
        lives = lives - 1;
        player.setPosition(0,0);
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
