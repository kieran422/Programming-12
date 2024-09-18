void game() {
  background(0);
  
  pushMatrix();
  translate(0,0);
  //bike(0,0);
  popMatrix();

  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/2;
    vx = 0;
    vy = 0;
    timer = 100;
  }

  if (ballx > 1100) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    vx = 0;
    vy = 0;
    timer = 100;
  }

  if (rightscore == 5) mode = GAMEOVER;
  if (leftscore == 5) mode = GAMEOVER;

  //draw right guy
  fill(0);
  stroke(0);  
  circle(rightx, righty, rightd);
  bike(rightx-79, righty-92);

  if (righty < 25)
    righty = 25;
  if (righty > 775)
    righty = 775;

  if (rightx < 25)
    rightx = 25;
  if (rightx > 1075)
    rightx = 1075;

  //draw left guy
  fill(0);
  circle(leftx, lefty, leftd);

  if (lefty < 25)
    lefty = 25;
  if (lefty > 775)
    lefty = 775;

  if (leftx < 25)
    leftx = 25;
  if (leftx > 1075)
    leftx = 1075;

  //draw ball

  fill(0, 0, 255);
  circle(ballx, bally, balld);


  //bouncing
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = vy * -1;

    }
    if (dist(ballx, bally, rightx, righty) < balld /2 + rightd/2) {
      vx = (ballx - rightx)/20;
      vy = (bally - righty)/20;
    }
    if (dist(ballx, bally, leftx, lefty) < balld /2 + leftd/2) {
      vx = (ballx - leftx)/20;
      vy = (bally - lefty)/20;
    }

    dd =  dist(rightx, righty, ballx, bally);

    if (dd <= r + R) {
      vx = (ballx - rightx)/10;
      vy = (bally - righty)/10;
    }

    dd =  dist(leftx, lefty, ballx, bally);

    if (dd <= r + R) {
      vx = (ballx - leftx)/10;
      vy = (bally - lefty)/10;
    }


    //initialize right guy
    if (upkey == true) righty = righty - 8;
    if (downkey == true) righty = righty + 8;
    if (leftkey == true) rightx = rightx - 8;
    if (rightkey == true) rightx = rightx + 8;

    //initialize left guy
    if (wkey == true) lefty = lefty - 8;
    if (skey == true) lefty = lefty + 8;
    if (akey == true) leftx = leftx - 8;
    if (dkey == true) leftx = leftx + 8;

    //initialize right gun



    //ball moving

    ballx = ballx + vx;
    bally = bally + vy;
  }

  void gameClicks() {
  }
