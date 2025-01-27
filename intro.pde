void intro() {
  image(introScreen, 0,0);
  textMode(CENTER);

  noStroke();
  fill(255);



  //button
  click();

  if (myButtons[0].clicked) {
    mode = GAME;
    level = 1;
    lives = 5;
  }

  //myButtons[i].act();
  myButtons[0].show();
}
