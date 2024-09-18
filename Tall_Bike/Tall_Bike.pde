void setup() {

  size(800, 800);
  background(0);

  pushMatrix();

  bike();


  popMatrix();
}

void bike() {
  pushMatrix();
  translate(0, 0);
  bikes(300, 200);
  bikes(-100, -100);
  popMatrix();
}

void bikes(float x, float y) {
  pushMatrix();
  translate(x, y);
  frisk(0, 0);
  wheels(0, 0);
  misc(0, 0);
  frames(0, 0);

  popMatrix();
}

void misc(float x, float y) {

  stroke(#0FC100);
  strokeWeight(5);
  //steartube
  line(340, 246, 402, 450);
  //seat tube
  line(320, 460, 250, 230);
  //saddle
  stroke(255);
  triangle(260, 230, 245, 233, 245, 227);
  //stem
  strokeWeight(4);
  stroke(#F20AD4);
  line(340, 243, 353, 240);
}

void frisk(float x, float y) {
  //bar
  strokeWeight(5);
  stroke(255);
  fill(0);
  circle(360, 255, 30);
  stroke(0);
  rect(345, 245, 15, 30);
}

void frames(float x, float y) {
  pushMatrix();
  frame(0,0);
  frame(-40,-135);
  
  popMatrix();
}


void frame(float x, float y) {
  pushMatrix();
  translate(x,y);
  //rear triangle
  stroke(#0FC100);
  strokeWeight(6);
  line(250, 450, 320, 460);
  line(250, 450, 300, 390);
  //line(320, 460, 300, 380);

  //front
  line(300, 390, 380, 390);
  line(320, 460, 385, 405);
  //line(382, 385, 390, 410);



  popMatrix();
}

void wheels(float x, float y) {

  pushMatrix();

  wheel1(-100, 100);
  wheel1(52, 100);
  popMatrix();
}

void wheel1(float x, float y) {
  pushMatrix();
  translate(x, y);
  //rim
  strokeWeight(10);
  stroke(255);
  fill(0);
  circle(350, 350, 100);


  //spokes
  strokeWeight(1);
  stroke(255);
  line(350, 350, 395, 350);
  line(350, 350, 305, 350);
  line(350, 350, 350, 305);
  line(350, 350, 350, 395);

  line(350, 350, 320, 320);
  line(350, 350, 320, 380);
  line(350, 350, 380, 380);
  line(350, 350, 380, 320);


  //hub
  stroke(#F20AD4);
  strokeWeight(5);
  fill(#F20AD4);
  circle(350, 350, 7);

  popMatrix();
}
