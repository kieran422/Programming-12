void gameover() {
  fill(0, 255, 0);
  if (leftscore > rightscore) {
    textSize(100);
    textMode(CENTER);
    background(leftw);
  } else {
    fill(0, 0, 255);
    textSize(75);
    textMode(CENTER);
    background(rightw);
  }
  
    click();

    if (myButtons[1].clicked) {
      mode = INTRO;
      reset();
    }

    //myButtons[i].act();
    myButtons[1].show();
  
}
