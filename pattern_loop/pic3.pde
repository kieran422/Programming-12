void pic3() {
  
  int count3 = 0;
  while (count3 < 890) {

    circle(0+count3, 0+count3, 100);

    count3 = count3 + 5;
  }
  

  //left arrow
  imageMode(CENTER);
  TACTILE(25,385, 30, 30);
  strokeWeight(2);
  fill(0);
  circle(25, 385, 30);
  stroke(255);
  triangle(19, 385, 29, 377, 29, 393);

}

void pic3Clicks() {
  if (mouseX > 10 && mouseX < 40 && mouseY > 370 && mouseY < 400) {
    mode = PIC2;
  }
}
