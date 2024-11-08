class Button {

  //instance variables
  int x, y, w, h, s; //x, y is the center
  boolean clicked;
  color highlight, normal;
  String text;
  PImage pic;


  //constructor
  Button(String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
  }
  
  Button(PImage _pic, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    pic = _pic;
    text = "";
    highlight = high;
    normal = norm;
    clicked = false;
  }
  
  
  
  
  
  boolean touchingMouse() {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      return true;
    } else {
      return false;
    }
  }


  //behavior functions
  void show() {
    drawRect();
    drawText();
    drawImage();
    clickedOn();
  }
//shit in the show 

  void drawImage() {
    //text label
    if ( pic != null) {
      image(pic, x, y);
    }
  }
  void drawRect() {
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    if (touchingMouse()) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);
  }

  void drawText() {
    //text label
    if (touchingMouse()) {
      fill(normal);
    } else {
      fill(highlight);
    }
    textSize(w/8);
    text(text, x, y);
  }
  void clickedOn() {
    //clicks
    if (mouseReleased && touchingMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
