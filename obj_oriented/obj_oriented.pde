Mover[] myMover;

int n = 5;



void setup() {
  size(600, 600);
  myMover = new Mover[n];
  int i = 0;
  while (i < n) {
    myMover[i] = new Mover();
    i++;
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i < n) {
    myMover[i].act();
    myMover[i].show();
    i++;
  }
}
