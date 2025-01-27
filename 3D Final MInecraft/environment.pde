void drawMap() {
  for (int x = 0; x < map.width; x++) {
    for (int y = 0; y < map.height; y++) {
      color c = map.get(x, y);
      if (c == black) {
        texturedCube(x*gridSize-2000, height-gridSize*2, y*gridSize-2000, stone, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*1, y*gridSize-2000, stone, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*3, y*gridSize-2000, stone, gridSize);
      } else if (c == wallBlue) {
        texturedCube(x*gridSize-2000, height-gridSize*3, y*gridSize-2000, dirt, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*4, y*gridSize-2000, dirt, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*2, y*gridSize-2000, dirt, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize, y*gridSize-2000, dirt, gridSize);
      } else if (c == pink) {
        texturedCube(x*gridSize-2000, height-gridSize*3, y*gridSize-2000, diamond, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*4, y*gridSize-2000, diamond, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*2, y*gridSize-2000, diamond, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize, y*gridSize-2000, diamond, gridSize);
      } else if (c == green) {
        texturedCube(x*gridSize-2000, height-gridSize*3, y*gridSize-2000, diamond, gridSize);
        texturedCube(x*gridSize-2000, height-gridSize*4, y*gridSize-2000, diamond, gridSize);
        texturedCube2(x*gridSize-2000, height-gridSize*2, y*gridSize-2000, 0.46);
        texturedCube(x*gridSize-2000, height-gridSize, y*gridSize-2000, diamond, gridSize);
      }
    }
  }
}
void drawFocalPoint() {

  //focus dot
  pushMatrix();
  translate(focusX, focusY, focusZ);
  sphere(5);
  popMatrix();

  //move
}

void drawFloor(int start, int end, int level, int gap) {
  stroke(255);
  strokeWeight (1);
  int x = start;
  int z = start;
  while (z < end) {
    texturedCube(x, level, z, stone, gap);
    x = x + gap;
    //println(x);
    if (x >= end) {
      x = start;
      z = z + gap;
    }
  }
}

void drawCeiling(int start, int end, int level, int gap) {
  stroke(255);
  strokeWeight (1);
  int x = start;
  int z = start;
  println(z);
  while (z < end) {
    texturedCube(x, level, z, dirt, gap);
    x = x + gap;
    //println(x);
    if (x >= end) {
      x = start;
      z = z + gap;
    }
  }
}
