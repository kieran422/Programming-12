float rotx, roty;

void setup() {
  size(800, 800, P3D);
}

void draw() {
  background(255);

  translate(width/2, height/2, 50);

  
  cube(width/2, height/2, 0, #FF0000, 200);
  ball(50, 50, 0, #FF1000, 100);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  fill(c); 
  stroke(0);
  strokeWeight(3);
  box(size); // side length

  popMatrix();
}

void ball(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);

  rotateX(rotx);
  rotateY(roty);
  //rotateZ();

  fill(c);
  stroke(0);
  strokeWeight(3);
  sphere(size);

  popMatrix();
}
void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
