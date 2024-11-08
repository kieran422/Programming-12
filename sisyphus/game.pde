void game() {

  background(hell);


  //fisica stuff

  world.step();
  world.draw();
  handlePlayerInput();
  checkLeftScore();
  checkRightScore();
  //gif stuff
  fire1.show();
  fire2.show();
  image(hill, 90, 520, 320, 320);
  image(hill, 870, 520, 320, 320);

  //blob spawning

  if (frameCount % 500 == 0) { //Every 20 frames ...
    makeBoulder();
  }

  if (frameCount % 300 == 0) { //Every 20 frames ...
    makeBoulder2();
  }


  //scoreboard
  fill(purple);
  noStroke();
  textSize(80);
  fill(gold);
  text(leftscore, width/4, 100);
  fill(grey);
  text(rightscore, 3*width/4, 100);

  //timer
  fill(255);
  timer = timer -1;

  if (timer > 360) {
    textSize(80);
    text(timer/60, width/2, 100);
  } else {
    textSize(150);
    text(timer/60, width/2, height/2);
  }
  if (timer < 0) {
    mode = GAMEOVER;
  }
}

void makeLeftGround() {
  leftGround = new FBox(250, 50);

  //plot the vertices of this platform

  leftGround.setPosition(125, 810);

  //set visuals
  leftGround.setStroke(0);
  leftGround.setStrokeWeight(0);
  leftGround.setFillColor(0);


  // define properties
  leftGround.setStatic(true);
  leftGround.setFillColor(0);
  leftGround.setFriction(0);

  //put it in the world
  world.add(leftGround);
}

//===========================================================================================
void makeRightGround() {
  rightGround = new FBox(250, 50);

  //plot the vertices of this platform

  rightGround.setPosition(1175, 810);

  //set visuals
  rightGround.setStroke(0);
  rightGround.setStrokeWeight(0);
  rightGround.setFillColor(0);


  // define properties
  rightGround.setStatic(true);
  rightGround.setFillColor(0);
  rightGround.setFriction(0);

  //put it in the world
  world.add(rightGround);
}

//===========================================================================================
void makeBoulder() {
  boulder = new FCircle(200);
  boulder.setPosition(random(350, 1100), -5);

  //set visuals
  boulder.attachImage(boulders);
  boulder.setStroke(0);
  boulder.setStrokeWeight(2);
  boulder.setFillColor(blue);

  //set physical properties
  boulder.setDensity(0.2);
  boulder.setFriction(1);
  boulder.setRestitution(1);

  //add to world
  world.add(boulder);
}
//===========================================================================================
void makeBoulder2() {
  boulder2 = new FCircle(100);
  boulder2.setPosition(random(350, 1100), -5);

  //set visuals
  boulder2.attachImage(boulders2);
  boulder2.setStroke(0);
  boulder2.setStrokeWeight(2);
  boulder2.setFillColor(blue);

  //set physical properties
  boulder2.setDensity(0.2);
  boulder2.setFriction(1);
  boulder2.setRestitution(1);

  //add to world
  world.add(boulder2);
}
//===========================================================================================

void makeLeftPlayer() {
  leftPlayer = new FCircle(70);
  leftPlayer.setPosition(1000, 100);

  leftPlayer.attachImage(sisyphus);

  //set visuals


  leftPlayer.setStroke(0);
  leftPlayer.setStrokeWeight(2);
  leftPlayer.setFillColor(green);


  //set physical properties
  leftPlayer.setDensity(100);
  leftPlayer.setFriction(1);
  leftPlayer.setRestitution(0.5);

  //add to world
  world.add(leftPlayer);
}

//===========================================================================================

void makeRightPlayer() {
  rightPlayer = new FCircle(60);
  rightPlayer.setPosition(300, 100);

  //set visuals
  rightPlayer.attachImage(sisy);
  rightPlayer.setStroke(0);
  rightPlayer.setStrokeWeight(2);
  rightPlayer.setFillColor(blue);

  //set physical properties
  rightPlayer.setDensity(100);
  rightPlayer.setFriction(1);
  rightPlayer.setRestitution(0.5);

  //add to world
  world.add(rightPlayer);
}

void makeRightGoal() {
  rightGoal = new FPoly();
  //plot the vertices of this platform

  rightGoal.vertex(260, 600);
  rightGoal.vertex(400, 900);
  rightGoal.vertex(150, 900);

  // define properties
  rightGoal.setStatic(true);
  rightGoal.setFillColor(yellow);
  rightGoal.setFriction(0);

  //put it in the world
  world.add(rightGoal);
}

void makeLeftGoal() {
  rightGoal = new FPoly();

  //plot the vertices of this platform

  rightGoal.vertex(1040, 600);
  rightGoal.vertex(900, 900);
  rightGoal.vertex(1150, 900);

  // define properties
  rightGoal.setStatic(true);
  rightGoal.setFillColor(yellow);
  rightGoal.setFriction(0);

  //put it in the world
  world.add(rightGoal);
}
//===========================================================================================
