void intro() {
  background(camus);
  textMode(CENTER);
  
  noStroke();
  fill(purple);
  
  
  
  //button
  click();

    if (myButtons[0].clicked) {
      mode = GAME;
    }

    //myButtons[i].act();
    myButtons[0].show();
}
