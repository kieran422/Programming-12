void game() {
  loadBack();
  actWorld();
  drawWorld();
  drawLives();
}

void loadBack () {
  if (level == 1) {
    image(back1, 0, 0);
  }
  if (level == 2) {
    image(back1, 0, 0);
  }
  if (level == 3) {
    image(back2, 0, 0);
  }
}

void drawLives() {
  for (int i = 0; i < lives; i++) {
    image(heart, 10 + i * 70, 10);
  }
}

void drawWorld() {
  pushMatrix();
  translate(-player.getX()*zoom+width/2, -player.getY()*zoom+height/2);
  scale(zoom);
  world.step();
  world.draw();
  popMatrix();
}

void actWorld() {
  player.act();
  for (int i = 0; i < terrain.size(); i++) {
    FGameObject t = terrain.get(i);
    t.act();
  }
  for (int i = 0; i < enemies.size(); i++) {
    FGameObject e = enemies.get(i);
    e.act();
  }
}

void loadWorld(PImage img) {
  world = new FWorld(-80000, -80000, 80000, 80000);
  world.setGravity(0, 900) ;
  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      color c = img.get(x, y); //color of current pixel
      color s = img.get(x, y+1); //color below current pixel
      color w = img.get(x-1, y); //color west of current pixel
      color e = img.get (x+1, y); //color east of current pixell
      color n = img.get(x, y-1); //color above of current pixell
      FBox b = new FBox(gridSize, gridSize);
      b.setPosition(x*gridSize, y*gridSize);
      b.setStatic(true);

      if (c == black) { //dirt block
        b.attachImage(dirt);
        b.setFriction(4);
        b.setName("dirt");
        world.add(b);
      } else if (c == dirt2) { //cool dirt block
        b.attachImage(coolDirt);
        b.setFriction(4);
        b.setName("dirt2");
        world.add(b);
      } else if (c == nudeBrown) { //nudist platform
        b.attachImage(dirt);
        b.setFriction(4);
        b.setImageAlpha(0);
        b.setName("dirt");
        world.add(b);
      } else if (c == brown) { //wood block
        b.attachImage(wood);
        b.setFriction(5);
        b.setSensor(true);
        b.setName("wood");
        world.add(b);
      } else if (c == grey) { //wall
        b.attachImage(wood);
        b.setImageAlpha(0);
        b.setSensor(true);
        b.setName("wall");
        world.add(b);
      } else if (c == purple) { //LB block
        FBridge br = new FBridge(x*gridSize, y*gridSize) ;
        terrain.add(br);
        world.add (br);
      } else if (c == yellow) { //lava
        FLava br = new FLava(x*gridSize, y*gridSize) ;
        terrain.add(br);
        world.add (br);
      }



      //nudist
      else if (c == nudist) {
        FNudist nd = new FNudist(x*gridSize, y*gridSize) ;
        terrain.add(nd);
        world.add (nd);
      } else if (c == dancingBaby) {
        FBaby nd = new FBaby(x*gridSize, y*gridSize) ;
        terrain.add(nd);
        world.add (nd);
      } else if (c == blue && s != bridgeSupport) { //LB block
        b.attachImage(lb);
        b.setFriction(0);
        b.setName("lb");
        world.add(b);
      } else if (c == blue && s == bridgeSupport) { //bridge support
        b.attachImage(lbIntersect);
        b.setFriction(0);
        b.setName("lbIntersect");
        world.add(b);
      } else if (c == red) { //roots
        b.attachImage(roots);
        b.setFriction(10);
        b.setName("roots");
        world.add(b);
      } else if (c == pinkRed) { //jump
        b.attachImage(jump);
        b.setSensor(true);
        b.setFriction(10);
        b.setName("jump");
        world.add(b);
      } else if (c == orange) { //prejump
        b.attachImage(preJump);
        b.setFriction(10);
        b.setName("prejump");
        world.add(b);
      } else if (c == greenBoost) { //boost block
        b.attachImage(lbs);
        b.setFriction(10);
        b.setName("boost");
        world.add(b);
      } else if (c == blueTramp) { //trampoline
        b.attachImage(lbs);
        b.setFriction(10);
        b.setName("tramp");
        world.add(b);
      } else if (c == quicktimeBoost) { //quick time boost block
        b.attachImage(quickboost);
        b.setFriction(1);
        b.setName("quicktimeBoost");
        world.add(b);
      } else if (c == bridgeSupport) { //bridge support
        b.attachImage(lbSupport);
        b.setFriction(1);
        b.setSensor(true);
        b.setName("lbsupporters");
        world.add(b);
      } else if (c == teleporter) { //teleporter
        b.attachImage(dirt);
        b.setFriction(1);
        b.setName("tp");
        world.add(b);
      }


      //tree leaves complex
      else if (c == treegreen && w == treegreen & e == treegreen & n == treegreen && s != brown && s != treegreen) { //bottom mid leaf block
        b.attachImage(leafB);
        b.setFriction(5);
        b.setName("leaf");
        world.add(b);
      } else if (c == treegreen && s == brown) { //bottom intersecting leaf block
        b.attachImage(leafBT);
        b.setFriction(5);
        b.setName("leaf");
        world.add(b);
      } else if (c == treegreen && w != treegreen && s != treegreen) { //bottom left end leaf block
        b.attachImage(leafBL);
        b.setFriction(5);
        b.setName("leaf");
        world.add(b);
      } else if (c == treegreen && e != treegreen && s != treegreen) { //bottom right end leaf block
        b.attachImage(leafBR);
        b.setFriction(5);
        b.setName("leaf");
        world.add(b);
      } else if (c == treegreen && w == treegreen & e == treegreen & s == treegreen) { //top mid leaf block
        b.attachImage(leafT);
        b.setFriction(5);
        b.setName("leaf");
        world.add(b);
      } else if (c == treegreen && w != treegreen && s == treegreen && w != blue) { //top left end leaf block
        b.attachImage(leafTL);
        b.setFriction(5);
        b.setName("leaf");
        b.setSensor(true);
        world.add(b);
      } else if (c == treegreen && e != treegreen && e != blue) { //top right end leaf block
        b.attachImage(leafTR);
        b.setFriction(5);
        b.setName("leaf");
        b.setSensor(true);
        world.add(b);
      } else if (c == treegreen && e == blue) { //top right bridge end leaf block
        b.attachImage(leafBBR);
        b.setFriction(5);
        b.setName("leaf");
        world.add(b);
      } else if (c == treegreen && w == blue && e == treegreen) { //top left bridge end leaf block
        b.attachImage(leafBBL);
        b.setFriction(5);
        b.setName("leaf");
        world.add(b);
      }

      //bear
      else if (c == pink) {
        FBear br = new FBear(x*gridSize, y*gridSize);
        enemies.add(br);
        world.add(br);
      }
      //hiker
      else if (c == beigeHiker) {
        FHiker hkr = new FHiker(x*gridSize, y*gridSize);
        enemies.add(hkr);
        world.add(hkr);
      }

      //static hiker
      else if (c == staticHiker) {
        FSHiker shkr = new FSHiker(x*gridSize, y*gridSize);
        enemies.add(shkr);
        world.add(shkr);
      }
      //FALLING BRANCH
      else if (c == fallingBranch && e == brown) {
        FBranch brn = new FBranch((x-1)*gridSize, y*gridSize);
        enemies.add(brn);
        world.add(brn);
      } else if (c == fallingBranch && w == brown) {
        FBranch2 brn2 = new FBranch2((x+1)*gridSize, y*gridSize);
        enemies.add(brn2);
        world.add(brn2);
      }
      //attack branch
      else if (c == attackBranch) {
        FAttackBranch abrn = new FAttackBranch(x*gridSize, y*gridSize);
        enemies.add(abrn);
        world.add(abrn);
      }
      //Lazer Nudist
      else if (c == lazerNudistColor) {
        FLazerNudist laz = new FLazerNudist(x*gridSize, y*gridSize);
        enemies.add(laz);
        world.add(laz);
      }
    }
  }
}


void loadMap() {
  if (level == 1) {
    loadWorld(map);
  }
  if (level == 2) {
    loadWorld(map2);
  }
  if (level == 3) {
    loadWorld(map3);
  }
}
