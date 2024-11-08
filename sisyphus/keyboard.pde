void handlePlayerInput() {
  float right_vx = rightPlayer.getVelocityX();
  float right_vy = rightPlayer.getVelocityY();
  if (wkey)rightPlayer.setVelocity(right_vx, -600);
  if (skey)rightPlayer.setVelocity(right_vx, 600);
  if (akey)rightPlayer.setVelocity(-600, right_vy);
  if (dkey)rightPlayer.setVelocity(600, right_vy);

  float left_vx = leftPlayer.getVelocityX();
  float left_vy = leftPlayer.getVelocityY();
  if (upkey)leftPlayer.setVelocity(left_vx, -600);
  if (downkey)leftPlayer.setVelocity(left_vx, 600);
  if (leftkey)leftPlayer.setVelocity(-600, left_vy);
  if (rightkey)leftPlayer.setVelocity(600, left_vy);
}

void keyPressed() {
  //right
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT)  leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  //left
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey = true;
}

void keyReleased() {
  //right
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  //left
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
}
