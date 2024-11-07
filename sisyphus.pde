import fisica.*;

//buttons
Button[] myButtons;
boolean mouseReleased, wasPressed, back;
int n = 2;
//keys

boolean upkey, downkey, leftkey, rightkey, wkey, skey, akey, dkey;

//gravity
boolean gravity;

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

boolean reset = false;

//images
PImage hell;
PImage sisyphus;
PImage sisy;
PImage boulders;
PImage boulders2;
PImage hill;
PImage camus;
PImage leftw;
PImage rightw;

//gifs
Gif fire1, fire2;

void checkLeftScore() {
  ArrayList<FContact> contactList = leftGround.getContacts();
  if (contactList.size() > 0) {
    println("DIE!");
    FContact fc = contactList.get(0);
    FBody one = fc.getBody1();
    FBody two = fc.getBody2();
    if (leftGround == one && rightPlayer != two && leftPlayer != two) {
      world.remove(two);
      rightscore++;
    } else if (rightPlayer != two && leftPlayer != two) {
      world.remove(one);
    }
  }
}

void checkRightScore() {
  ArrayList<FContact> contactList = rightGround.getContacts();
  if (contactList.size() > 0) {
    println("DIE!");
    FContact fc = contactList.get(0);
    FBody one = fc.getBody1();
    FBody two = fc.getBody2();
    if (rightGround == one && rightPlayer != two && leftPlayer != two) {
      world.remove(two);
      leftscore++;
    } else if (rightPlayer != two && leftPlayer != two) {
      world.remove(one);
    }
  }
}


//score
int leftscore, rightscore, timer;

FCircle rightPlayer;
FCircle leftPlayer;
FCircle boulder;
FCircle boulder2;
FPoly rightGoal;
FBox leftGround;
FBox rightGround;

//palette
color blue   = color(29, 178, 242);
color brown  = color(166, 120, 24);
color green  = color(74, 163, 57);
color red    = color(224, 80, 61);
color yellow = #F7F007;
color purple = #5e4447;
color gold = #e9c987;
color grey = #989898;

//fisica
FWorld world;

void setup() {


  size(1300, 800);

  mode = GAMEOVER;
  //buttons
  myButtons = new Button[n];
  myButtons[0] = new Button("Press to Start!", width/2, 700, 500, 150, purple, gold);
  myButtons[1] = new Button("Play Again!", width/2, 700, 500, 150, purple, gold);
  //gif stuff
  fire1 = new Gif ("gif/frame_", "_delay-0.1s.gif", 48, 7, -230, 600, 5, 5);
  fire2 = new Gif ("gif/frame_", "_delay-0.1s.gif", 48, 7, 1050, 600, 100, 100);

  //initalize images
  hell = loadImage("c95e88ec050b1ec0f35a4c8165b3396c.jpg");
  hell.resize(1300, 800);

  sisyphus = loadImage("sisy2.png");
  sisyphus.resize(150, 150);

  sisy = loadImage("sisy3.png");
  sisy.resize(150, 150);

  boulders = loadImage("185-1854792_rock-boulder.png");
  boulders.resize(200, 200);

  boulders2 = loadImage("185-1854792_rock-boulder.png");
  boulders2.resize(100, 100);

  hill = loadImage("sisy hill.png");
  hill.resize(100, 100);

  rightw = loadImage("Righty.png");
  rightw.resize(1300, 800);

  leftw = loadImage("Lefty.png");
  leftw.resize(1300, 800);

  camus = loadImage("sis.png");
  camus.resize(1300, 800);

  //fisica
  createWorld();
  createBodies();

  leftscore = 0;
  rightscore = 2;
  timer = 5450;
}

//-------------------------------------------------------

void createWorld() {
  //init world
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 980);
  world.setEdges();
}

//--------------------------------------------------------
void createBodies() {
  makeLeftGoal();
  makeLeftPlayer();
  makeRightGoal();
  makeRightPlayer();
  makeLeftGround();
  makeRightGround();
  makeBoulder();
  makeBoulder2();
}



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode ==PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("MODE error: " + mode);
  }
}  
