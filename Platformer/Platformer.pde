import fisica.*;
FWorld world;

//colors
color white = #FFFFFF;
color black = #000000;
color treegreen = #0d421b;
color purple = #6f3198;
color red = #ed1c24;
color blue = #00b7ef;
color brown = #632d19;
color orange = #ff7e00;
color pinkRed = #990030;
color yellow = #ffc20e;
color pink = #ffa3b1;
color grey = #464646;
color beigeHiker = #e5aa7a;
color blueTramp = #2f3699;
color greenBoost = #a8e61d;
color bridgeSupport = #65c2b8;
color quicktimeBoost = #574837;
color mud = #2e1a13;
color nudist = #472447;
color fallingBranch = #546d8e;
color attackBranch = #99d9ea;
color lazerNudistColor = #fff9bd;
color treeTrampoline = #40ff70;
color staticHiker = #c2631b;
color teleporter = #695d69;
color dirt2 = #3b1f3b;
color dancingBaby = #8f480a;
color nudeBrown = #851425;

//buttons
Button[] myButtons;
boolean mouseReleased, wasPressed, back;
int n = 2;

//mode framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int CUTSCENE = 3;
int level = 1;


PImage map, map2, map3, map4, dirt, lb, lbs, leafB, leafBL, leafBR, leafTR, leafTL, leafT, leafBT,
  leafBBR, leafBBL, wood, roots, jump, preJump, back1, back2, quickboost, tramp, treeBranch, regularBranch,
  introScreen, gameoverScreen, lbSupport, lbIntersect, heart, coolDirt, orb;


//map controls
int gridSize = 60;
float zoom = 1.5;


//objects and lists of objects
ArrayList<FGameObject> terrain;
ArrayList<FGameObject> enemies;
FPlayer player;

// actions
PImage[] idle;
PImage[] jump1;
PImage[] run;
PImage[] action;
PImage[] hikerWalk;
PImage[] hikerShake;
PImage[] bearWalk;
PImage[] bearTurn;
PImage[] actionBear;
PImage[] actionNudist1;
PImage[] nudist1;
PImage[] branchWalk;
PImage[] branchStatic;
PImage[] lazerNudist;
PImage[] actionShiker;
PImage[] shikerShake;
PImage[] shroomy;
PImage[] baby;
PImage[] actionBaby;




//gifs
PImage[] gif;
int numberOfFrames, numberOfFrames2;

//gifs
Gif shroomman;

//keyboard booleans
boolean upkey, downkey, leftkey, rightkey, wkey, skey, akey, dkey, spacekey, qkey, ekey, fly;

// lives

int lives = 15;

void setup() {
  size(1500, 1000);
  loadImages();
  Fisica.init(this);
  terrain = new ArrayList<FGameObject>();
  enemies = new ArrayList<FGameObject>();
  loadMap();
  loadPlayer();
  mode = INTRO;


  //buttons
  myButtons = new Button[n];
  myButtons[0] = new Button("Press to Start!", width/2, 865, 500, 150, treegreen, red);
  myButtons[1] = new Button("Play Again!", width/2, 870, 500, 150, treegreen, red);

  //gifs
  shroomman = new Gif ("SHROOMY/pixil-frame-", ".png", 24, 15, 200, 300, 900, 700);
}

void loadPlayer() {
  player = new FPlayer ();
  world.add(player);
}


void draw() {
  background(0, 0, 0);
  
  
  //mode framwork
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == CUTSCENE) {
    cutscene();
  } else {
    println("MODE error: " + mode);
  }
}
