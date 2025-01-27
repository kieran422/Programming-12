int frame1;

void cutscene() {
  background(back1);
  
  shroomman.show();

  if (spacekey) {
    mode = GAME;
    level = 3;
  }
}
