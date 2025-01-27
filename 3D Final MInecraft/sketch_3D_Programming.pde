import java.awt.Robot;

//color pallette
color black = #000000;
color white = #FFFFFF;
color wallBlue = #7092be;
color green = #a8e61d;
color pink = #ffa3b1;

//gifs

Gif star, star2;

//map variables
int gridSize;
PImage map;


//robot for mouse conrol
Robot hal;

boolean skipFrame;
boolean wkey, akey, skey, dkey, spacekey;
float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ;
float leftRightHeadAngle, upDownHeadAngle;

//textured block stuff

PImage diamond, dirt, stone;
float rotx, roty;

//game objects
ArrayList <GameObject> objects;

void setup () {
  fullScreen(P3D);
  textureMode (NORMAL) ;

  //create game object list
  objects = new ArrayList<GameObject>();

  diamond = loadImage("3D Textures/Diamond.png");
  dirt = loadImage("3D Textures/Dirt_(texture)_JE2_BE2.png");
  stone = loadImage("3D Textures/Stone_Bricks.png");

  star = new Gif ("ezgif-7-83535535aa-gif-png/frame_","_delay-0.1s.png", 51, 20, 0, 0, 100, 1, 1);
  //star2 = new Gif ("ezgif-7-83535535aa-gif-png/frame_","_delay-0.1s.png", 51, 50, 0, 0, 0, 1, 1);

  wkey = akey = skey = dkey = false;
  eyeX = width/2;
  eyeY = 8.5*height/10;
  eyeZ = height/2;
  focusX = width/2;
  focusY = height/2;
  focusZ = 10;
  tiltX = 0;
  tiltY = 1;
  tiltZ = 0;
  leftRightHeadAngle = 0;
  upDownHeadAngle = radians(270);
  noCursor();
  try {
    hal = new Robot();
  }
  catch(Exception e) {
    e.printStackTrace();
  }

  skipFrame = false;
  //initialize map
  map = loadImage("3Dmap.png");
  gridSize = 100;

  //load images
}

void draw() {

  background (0);
  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  pointLight(255, 255, 255, eyeX, eyeY, eyeZ);
  println("DRAWFLOOR");


  drawFloor(-2000, 2000, height, gridSize);
  println("DRAWCEILING");
  drawCeiling(-2000, 2000, height-gridSize*4, gridSize);
  drawFocalPoint();
  println("HERE");
  drawMap();
  println("HERE 1");
  controlCamera();
  println("HERE 2");

  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}
