void pic2() {
  background(255);
  translate(0, 0);
  int count = 0;
  int count2 = -296;
  int count3 = -53;
  int count4 = -188;
  
  while (count2 < 900) {

    mrTriangle(-370+count, count2);
    count = count + 108;
    if (count > 900) {
    count = 0;
    count2 = count2 + 215;
    }
  }
  while (count4 < 900) {

    mrTriangle(-370+count3, count4);
    count3 = count3 + 108;
    if (count3 > 900) {
    count3 = -53;
    count4 = count4 + 215;
    }
  }

      //left arrow
      imageMode(CENTER);
      TACTILE(25, 385, 30, 30);
      strokeWeight(2);
      fill(0);
      circle(25, 385, 30);
      stroke(255);
      triangle(19, 385, 29, 377, 29, 393);

      //right arrow
      imageMode(CENTER);
      TACTILE(775, 385, 30, 30);
      strokeWeight(2);
      circle(775, 385, 30);
      stroke(255);
      triangle(781, 385, 771, 377, 771, 393);
    }

void mrTriangle(float x, float y) {
  pushMatrix();
  translate(x, y);

  //pattern
  strokeWeight(0);
  stroke(#F0C722);
  //big balck
  fill(0);
  triangle(344, 300, 456, 300, 400, 190);
  triangle(400, 410, 344, 300, 456, 300);
  //big yellow
  fill(#F0C722);
  triangle(350, 300, 450, 300, 400, 200);
  triangle(400, 400, 350, 300, 450, 300);
  stroke(0);
  //lines top
  fill(#F0C722);
  strokeWeight(6);
  line(400, 230, 355, 315);
  line(400, 230, 443, 315);
  //lines mid
  line(400, 260, 363, 331);
  line(400, 260, 437, 331);
  //lines mid 2
  line(400, 290, 371, 347);
  line(400, 289, 429, 347);
  //line bottom
  line(400, 320, 378, 361);
  line(400, 320, 420, 361);
  //line bottom 2
  line(400, 350, 385, 377);
  line(400, 350, 415, 377);

  //white blockers
  //noStroke();
  //fill(255);
  //triangle(794, 700, 456, 300, 400, 410);
  //triangle(400, 410, 344, 300, 176, 700);

  popMatrix();
}


void pic2Clicks() {
  if (mouseX > 760 && mouseX < 790 && mouseY > 370 && mouseY < 400) {
    mode = PIC3;
  }
  if (mouseX > 10 && mouseX < 40 && mouseY > 370 && mouseY < 400) {
    mode = PIC1;
  }
}
