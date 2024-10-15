import fisica.*;


//butons
Button[] myButtons;

int n = 2;
PImage sprocket;
boolean mouseReleased, wasPressed, back;

//gravity
boolean gravity;

//palette
color blue   = color(29, 178, 242);
color brown  = color(166, 120, 24);
color green  = color(74, 163, 57);
color red    = color(224, 80, 61);
color yellow = color(242, 215, 16);

//clouds

int x1 = -50;
int x2 = -100;



//assets
PImage redBird;
PImage hal9000;

FPoly topPlatform;
FPoly bottomPlatform;

//fisica
FWorld world;

void setup() {
  gravity = true;

  //make window
  fullScreen();

  //load resources
  redBird = loadImage("red-bird.png");

  hal9000 = loadImage("hal-9000-panel-kultur-arts-studios-transparent.png");
  hal9000.resize(100, 100);


  //add terrain to world
  makeButton1();
  makeWorld();
  makeTopPlatform();
  makeBottomPlatform();
}
//===========================================================================================
void makeButton1() {
  myButtons = new Button[n];
  myButtons[0] = new Button("Gravity On", 700, 800, 200, 100, red, #FFFFFF);
  myButtons[1] = new Button("Gravity Off", 10000, 800, 200, 100, green, #FFFFFF);
}


//===========================================================================================

void makeWorld() {
  Fisica.init(this);
  world = new FWorld();
}

//===========================================================================================

void makeTopPlatform() {
  topPlatform = new FPoly();

  //plot the vertices of this platform
  topPlatform.vertex(-100, height*.1);
  topPlatform.vertex(width*0.8, height*0.4);
  topPlatform.vertex(width*0.8, height*0.4+100);
  topPlatform.vertex(-100, height*0.1+100);

  // define properties
  topPlatform.setStatic(true);
  topPlatform.setFillColor(brown);
  topPlatform.setFriction(0.1);

  //put it in the world
  world.add(topPlatform);
}

//===========================================================================================

void makeBottomPlatform() {
  bottomPlatform = new FPoly();

  //plot the vertices of this platform
  bottomPlatform.vertex(1200, height*0.8);
  bottomPlatform.vertex(1200, height*0.6);
  bottomPlatform.vertex(1250, height*0.6);
  bottomPlatform.vertex(1250, height*0.8);

  bottomPlatform.vertex(1250, height*0.75);
  bottomPlatform.vertex(1400, height*0.75);
  bottomPlatform.vertex(1400, height*0.8);

  bottomPlatform.vertex(1400, height*0.8);
  bottomPlatform.vertex(1400, height*0.6);
  bottomPlatform.vertex(1450, height*0.6);
  bottomPlatform.vertex(1450, height*0.8);

  // define properties
  bottomPlatform.setStatic(true);
  bottomPlatform.setFillColor(brown);
  bottomPlatform.setFriction(0);

  //put it in the world
  world.add(bottomPlatform);
}


//===========================================================================================

void draw() {
  println("x: " + mouseX + " y: " + mouseY);
  background(blue);

  if (gravity == true) {
    world.setGravity(0, 900);
  } else {
    world.setGravity(0, 0);
  }

  if (myButtons[0].clicked) {
    gravity = !gravity;
  }

  if (frameCount % 1 == 0) { //Every 20 frames ...
    //cloud 1
    cloud1();
  }


  if (frameCount % 20 == 0) { //Every 20 frames ...
    //cloud 1

    makeHal();
    makeBlob();
    makeBox();
    makeBird();


    //cloud 2
  }
  world.step();  //get box2D to calculate all the forces and new positions
  world.draw();//ask box2D to convert this world to processing screen coordinates and draw
  cloud2();
  makeButton2();
}
//===========================================================================================
void  makeButton2() {
  click();


  int i = 0;
  while (i < n) {

    //myButtons[i].act();
    myButtons[i].show();
    i++;
  }
}

void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && !mousePressed) {
    mouseReleased = true;
    wasPressed = false;
  }
}


//===========================================================================================

void cloud1() {
  x1 = x1 + 2;

  if (x1 > 1500) x1 = -50;

  fill(255);
  circle(x1+30, 100, 50);
  circle(x1, 120, 50);
  circle(x1-30, 90, 60);
}

void cloud2() {
  x2 = x2 + 2;

  if (x2 > 1500) x2 = -50;

  circle(x2+30, 200, 50);
  circle(x2, 220, 50);
  circle(x2-30, 190, 60);
}

//===========================================================================================

void makeBlob() {
  FBlob blob = new FBlob();

  //set visuals
  blob.setAsCircle(random(width), -5, 50);
  blob.setStroke(0);
  blob.setStrokeWeight(2);
  blob.setFillColor(yellow);

  //set physical properties
  blob.setDensity(0.2);
  blob.setFriction(1);
  blob.setRestitution(0.25);

  //add to the world
  world.add(blob);
}

//===========================================================================================

void makeBox() {
  FBox box = new FBox(50, 50);
  box.setPosition(random(width), -5);

  //set visuals
  box.setStroke(0);
  box.setStrokeWeight(2);
  box.setFillColor(red);

  //set physical properties
  box.setDensity(0.2);
  box.setFriction(1);
  box.setRestitution(1);

  //add to world
  world.add(box);
}

//===========================================================================================

void makeBird() {
  FCircle bird = new FCircle(48);
  bird.setPosition(random(width), -5);

  //set visuals
  bird.attachImage(redBird);

  //set physical properties
  bird.setDensity(0.8);
  bird.setFriction(1);
  bird.setRestitution(0.5);
  world.add(bird);
}

//===========================================================================================


void makeHal() {
  FBox hal = new FBox(50, 100);
  hal.setPosition(random(width), -5);

  //set visuals
  hal.attachImage(hal9000);

  //set physical properties
  hal.setDensity(0.2);
  hal.setFriction(1);
  hal.setRestitution(0.25);
  world.add(hal);
}
