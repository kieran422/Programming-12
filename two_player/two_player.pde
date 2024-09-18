//mode frame work
int mode; 
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float righty, rightx, rightd, lefty, leftx, leftd;
float ballx, bally, balld; 
float vx, vy;
float x, y, d;
float r, R,dd;

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean upkey, downkey, leftkey, rightkey, wkey, skey, akey, dkey;


void setup() {
  size(1100,800);
  
  mode = GAME;
  
  //initialize right guy
  rightx = width/4;
  righty = height/2;
  rightd = 70;
  
  //initialize left guy
  leftx = width/2;
  lefty = height/2;
  leftd = 50;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //movement initialization
  vx = 0;
  vy = 0;
}


void draw() {
  if (mode == INTRO) {
    intro();
  }else if (mode == GAME) {
    game();
  }else if (mode ==PAUSE) {
     pause();
  }else if (mode == GAMEOVER) {
     gameover();
  }else { 
    println("MODE error: " + mode);
  }
}
