void gameover() {
  fill(0, 255, 0);
    background(gameoverScreen);

  click();

  if (myButtons[1].clicked) {
    reset();
    level = 1;
    lives = 5;
    mode = INTRO;
  }

  //myButtons[i].act();
  myButtons[1].show();
}
