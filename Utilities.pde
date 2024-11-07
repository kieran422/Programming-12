void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && !mousePressed) {
    mouseReleased = true;
    wasPressed = false;
  }
}

void reset() {
  
  createWorld();
  createBodies();

  leftscore = 0;
  rightscore = 0;
  timer = 5450;
}
