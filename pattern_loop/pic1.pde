void pic1() {


  fill(0);
  strokeWeight(2);
  stroke(255);


  int count = 0;
  while (count < 800) {

    square(0+count, 0+count, 100);

    count = count + 5;
  }
  
  int count2 = 0;
  while (count2 < 0) {

    square(800-count2, 0+count2, 100);

    count = count2 + 5;
  }


  //right arrow
  imageMode(CENTER);
  TACTILE(775, 385, 30, 30);
  strokeWeight(2);
  circle(775, 385, 30);
  stroke(255);
  triangle(781, 385, 771, 377, 771, 393);
}

void pic1Clicks() {
  if (mouseX > 760 && mouseX < 790 && mouseY > 370 && mouseY < 400) {
    mode = PIC2;
  }
}
