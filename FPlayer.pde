class FPlayer extends FGameObject {

  int frame;
  int direction;

  FPlayer() {
    super();

    if (level == 1) {
      setPosition(0, 0);
    }
    if (level == 2) {
      setPosition(0, 0);
    }
    if (level == 3) {
      setPosition(0, 0);
      mode = CUTSCENE;
    }

    direction = R;
    setPosition(playerX, 1000);
    setName("player");
    setRotatable(false);
    setFillColor(red);
  }
  void act() {
    Inputs();
    collisions();
    animate();
    
    if (lives < 1){
    mode = GAMEOVER;
    }
  }

  void animate() {
    if (frame >= action.length) frame = 0;
    if (frameCount % 3 == 0) {
      if (direction == R) attachImage(action[frame]);
      if (direction == L) attachImage(reverseImage(action[frame]));
      frame++;
    }
  }

  void collisions() {

    if (isTouching("roots")) {
      setPosition(0, 0);
      lives = lives - 1;
      reset();
    }
    if (isTouching("tp")) {
      level = 2;
      loadMap();
      loadPlayer();
      println(level);
    }

    if (isTouching("nudist")) {
      level = 3;
      loadBack();
      loadMap();
      loadPlayer();
      println(level);
    }
    if (isTouching("baby")) {
      mode = INTRO;
      //loadBack();
      //loadMap();
      //loadPlayer();
      //println(level);
    }

    if (isTouching("lava")) {
      setPosition(0, 0);
      lives = lives - 1;
      reset();
    }
    if (isTouching("orb")) {
      setPosition(0, 0);
      lives = lives - 1;
      reset();
    }
    if (isTouching("tramp")) {
      setVelocity(getVelocityX(), -1000);
    }
    if (isTouching("boost")) {
      setVelocity(1000, getVelocityY());
    }
    if (isTouching("quicktimeBoost") && ekey) {
      setVelocity(1500, getVelocityY());
    }
  }

  void Inputs() {
    float vy = getVelocityY();
    float vx = getVelocityX();
    if (abs(getVelocityY()) < 0.1) {
      action = idle;
    }
    if (akey) {
      setVelocity(playerX-500, vy);
      action = run;
      direction = L;
    }

    if (dkey) {
      setVelocity(playerX+500, vy);
      action = run;
      direction = R;
    }
    if (isTouching("dirt") && spacekey || isTouching("dirt2") && spacekey || isTouching("boost") && spacekey || isTouching("leaf") && spacekey || isTouching("lb") && spacekey && spacekey || isTouching("lbIntersect") && spacekey || isTouching("branch2") && spacekey) {
      player.setVelocity(vx, -380);
    }

    //if (isTouching("dirt") && spacekey) {
    //  player.setVelocity(vx, -380);
    //  if (dkey && vx != 0) {
        
    //  }
    //}

    println(getVelocityY());
    if (abs (getVelocityY()) > 0.1)
      action = jump1;
  }
}
