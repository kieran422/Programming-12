void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT)  leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key ==' ') spacekey = true;
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == 'q' || key == 'Q') qkey = true;
  if (key == 'e' || key == 'E') ekey = true;
  
}

void keyReleased() {
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (key ==' ') spacekey = false;
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == 'q' || key == 'Q') qkey = false;
  if (key == 'e' || key == 'E') ekey = false;
  
}
