class Gif {

  //instance variables
  PImage[] frames;
  int num, speed;//x, y is the center
  float x, y, z, w, h;
  String prep, posty;
  int currentFrame;


  //constructor
  Gif(String prep, String posty, int n, int s, int _x, int _y, int _z, int _w, int _h) {
    
    num = n;
    speed = s;
    x = _x;
    y = _y;
    z = _z;
    w = _w;
    h = _h;
    currentFrame = 0;

    frames = new PImage[n];

    int a = 0;
    while ( a < num ) {
      frames[a] = loadImage(prep + a + posty);
      a++;
    }

    w = frames[0].width;
    h = frames[0].height;
  }

  //behavior functions
  void show() {

    if (currentFrame == num) currentFrame = 0;
    image(frames[currentFrame], x, y, w, h);
    if (frameCount % speed == 0) currentFrame++;
  }
}
