Button[] myButtons;

int n = 4;
PImage sprocket;
boolean mouseReleased, wasPressed, back;



//color pallet

color blue = #123AFA;
color green = #34931F;
color yellow = #D8EA18;
color red = #EA1818;

//draw out buttons individually

void setup() {
  size(600, 600);
  
   //image setup
  sprocket = loadImage("rusty-old-cog-wheel-isolated-on-transparent-background-free-png-3.png");
  
  myButtons = new Button[n];
  myButtons[0] = new Button("right", 100, 300, 100, 400, blue, #FFFFFF);
  myButtons[1] = new Button(sprocket, 300, 200, 200, 200, green, #FFFFFF);
  myButtons[2] = new Button("abc", 300, 400, 200, 100, yellow, #FFFFFF);
  myButtons[3] = new Button("abc", 500, 300, 100, 400, red, #FFFFFF);
  
 
}


void draw() { //String text, int x, int y, int w, int h, color normal, color highlight
  click();

  int i = 0;
  while (i < n) {
    if (myButtons[i].clicked) {
      background(myButtons[i].normal);
    }

    //myButtons[i].act();
    myButtons[i].show();
    i++;
  }
}
