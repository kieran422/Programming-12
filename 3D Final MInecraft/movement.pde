void controlCamera() {
  if (wkey && canMoveForward()) {
    eyeX = eyeX + cos(leftRightHeadAngle)*10;
    eyeZ = eyeZ + sin(leftRightHeadAngle)*10;
  }
  if (skey && canMoveBack()) {
    eyeX = eyeX - cos(leftRightHeadAngle)*10;
    eyeZ = eyeZ - sin(leftRightHeadAngle)*10;
  }
  if (akey && canMoveLeft()) {
    eyeX = eyeX - cos(leftRightHeadAngle + PI/2)*10;
    eyeZ = eyeZ - sin(leftRightHeadAngle + PI/2)*10;
  }
  if (dkey && canMoveRight()) {
    eyeX = eyeX - cos(leftRightHeadAngle - PI/2)*10;
    eyeZ = eyeZ - sin(leftRightHeadAngle - PI/2)*10;
  }
  if (spacekey) {
  objects.add(new Bullet());
  }

  if (skipFrame == false) {
    leftRightHeadAngle = leftRightHeadAngle + (mouseX - pmouseX)*.01;
    upDownHeadAngle = upDownHeadAngle + (mouseY - pmouseY)*0.01;
  }

  if (upDownHeadAngle > PI/2.5) upDownHeadAngle = PI/2.5;
  if (upDownHeadAngle < -PI/2.5) upDownHeadAngle = -PI/2.5;


  focusX = eyeX + cos(leftRightHeadAngle)*300;
  focusZ = eyeZ + sin(leftRightHeadAngle)*300;
  focusY = eyeY + tan(upDownHeadAngle)*300;

  //if (mouseX < 2) {
  //  hal.mouseMove(width-2, mouseY);
  //  skipFrame = true;
  //} else if (mouseX > width-2) {
  //  hal.mouseMove(3, mouseY);
  //  skipFrame = true;
  //} else {
  //  skipFrame = false;
  //}
  println("repeat after me, the bug is always in the code I wrote");
  println(eyeX, eyeY, eyeZ);
}

boolean canMoveForward() {
  int mapx, mapy;
  float fwdx, fwdy, fwdz;
  fwdx = eyeX + cos(leftRightHeadAngle)*150;
  fwdy = eyeY;
  fwdz = eyeZ + sin(leftRightHeadAngle)*150;

  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canMoveBack() {
  int mapx, mapy;
  float fwdx, fwdy, fwdz;
  fwdx = eyeX + cos(leftRightHeadAngle)*35;
  fwdy = eyeY;
  fwdz = eyeZ + sin(leftRightHeadAngle)*35;

  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canMoveLeft() {
  int mapx, mapy;
  float fwdx, fwdy, fwdz;
  fwdx = eyeX + cos(leftRightHeadAngle + PI/2);
  fwdy = eyeY;
  fwdz = eyeZ + sin(leftRightHeadAngle + PI/2);

  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}

boolean canMoveRight() {
  int mapx, mapy;
  float fwdx, fwdy, fwdz;
  fwdx = eyeX + cos(leftRightHeadAngle - PI/2);
  fwdy = eyeY;
  fwdz = eyeZ + sin(leftRightHeadAngle - PI/2);

  mapx = int(fwdx+2000) / gridSize;
  mapy = int(fwdz+2000) / gridSize;

  if (map.get(mapx, mapy) == white) {
    return true;
  } else {
    return false;
  }
}
