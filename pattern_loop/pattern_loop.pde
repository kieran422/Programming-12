//mode framework
int mode;
final int PIC1 = 1;
final int PIC2 = 2;
final int PIC3 = 3;

//DRAWING VARIABLES
int count;
int count2;
float i, w;

void draw() {
  if (mode == PIC1) {
    pic1();
  } else if (mode == PIC2) {
    pic2();
  } else if (mode == PIC3) {
    pic3();
  } else {
    println("MODE error: " + mode);
  }
}

void setup() {
  size(800, 800);
  mode = PIC2;
}

void TACTILE (int x, int y, int w, int h) {
  if (mouseX> x-w/2 && mouseX< x+w/2 && mouseY> y-h/2 && mouseY< y+h/2) {
    stroke(0);
  } else {
    stroke(255);
  }
}
