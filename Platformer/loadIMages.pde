void loadImages() {

  //load images------------------------------------------------------------------------------------------------------------------------------------------------
  map = loadImage("pixil-frame-0.png");
  map2 = loadImage("pixlmap2.png");
  map3 = loadImage("pixil-frame-0-3.png");
  
  dirt = loadImage("Dirtblock.png");
  dirt.resize(60, 60);
  coolDirt = loadImage("cooool.png");
  coolDirt.resize(60, 60);  
  lb = loadImage("LB.png");
  lb.resize(60, 60);
  lbs = loadImage("LBS.png");
  lbs.resize(60, 60);
  wood = loadImage("Wood.png");
  wood.resize(60, 60);
  roots = loadImage("Roots.png");
  roots.resize(60, 60);
  jump = loadImage("Jump.png");
  jump.resize(60, 60);
  preJump = loadImage("JumpPre.png");
  preJump.resize(60, 60);
  back1 = loadImage("Forest_background_5.png");
  back1.resize(1500, 1000);
  back2 = loadImage("Hallow_background_3.png");
  back2.resize(1500, 1000);
  quickboost = loadImage("boostlog.png");
  quickboost.resize(60, 60);
  treeBranch = loadImage("branch.png");
  regularBranch = loadImage("regularBranch.png");
  introScreen = loadImage("platformer titlescreen.png");
  introScreen.resize(1500, 1000);
  gameoverScreen = loadImage("game over screen.png");
  gameoverScreen.resize(1500, 1000);
  heart = loadImage("heart.png");
  heart.resize(100,100);
  orb = loadImage("Orb.png");
  orb.resize(60,60);



  //regularBranch.resize(400, 200);
  lbSupport = loadImage("logsupport.png");
  lbSupport.resize(60, 60);
  lbIntersect = loadImage("LBIntersect.png");
  lbIntersect.resize(60, 60);

  leafB = loadImage("ComplexLeaves/B.png");
  leafB.resize(60, 60);
  leafBL = loadImage("ComplexLeaves/BL.png");
  leafBL.resize(60, 60);
  leafBR = loadImage("ComplexLeaves/BR.png");
  leafBR.resize(60, 60);
  leafBT = loadImage("ComplexLeaves/BT.png");
  leafBT.resize(60, 60);
  leafT = loadImage("ComplexLeaves/T.png");
  leafT.resize(60, 60);
  leafTL = loadImage("ComplexLeaves/TL.png");
  leafTL.resize(60, 60);
  leafTR = loadImage("ComplexLeaves/TR.png");
  leafTR.resize(60, 60);
  leafBBR = loadImage("ComplexLeaves/BBR.png");
  leafBBR.resize(60, 60);
  leafBBL = loadImage("ComplexLeaves/BBL.png");
  leafBBL.resize(60, 60);

  //load player actions------------------------------------------------------------------------------------------------------------------------------------------------

  idle = new PImage [6];
  int a = 0;
  while (a < 6) {
    idle[a] = loadImage("GifIdle/frame_"+a+"_delay-0.09s.png");
    idle[a].resize(105, 85);
    a++;
  }

  jump1 = new PImage[37];
  int b = 14;
  while (b < 51) {
    jump1[b-14] = loadImage ("GifHat/frame_"+b+"_delay-0.09s.png");
    jump1[b-14].resize(105, 85);
    b++;
  }

  run = new PImage[16];
  int c = 0;
  while (c < 16) {
    run[c] = loadImage("GifRide/frame_"+c+"_delay-0.09s.png");
    run[c].resize(105, 85);
    c++;
  }

  //enemies---------------------------------------------------------------------------------------------------------------------------------------------------------
  hikerWalk = new PImage[10];
  int d = 0;
  while (d < 10) {
    hikerWalk[d] = loadImage("HikerWalk/kryss-ikari-oldman-all-"+d+"(dragged).png");
    hikerWalk[d].resize(105, 85);
    d++;
  }

  hikerShake = new PImage[18];
  int e = 0;
  while (e < 18) {
    hikerShake[e] = loadImage("HikerShake/kryss-ikari-oldman-all-"+e+"(dragged).png");
    hikerShake[e].resize(105, 85);
    e++;
  }

  shikerShake = new PImage[18];
  int z = 0;
  while (z < 18) {
    shikerShake[z] = loadImage("HikerShake/kryss-ikari-oldman-all-"+z+"(dragged).png");
    shikerShake[z].resize(105, 85);
    z++;
  }

  bearWalk = new PImage[6];
  int f = 0;
  while (f < 6) {
    bearWalk[f] = loadImage("bearWalk/aleksei-lokhanin-bearall-"+f+" (dragged).png");
    bearWalk[f].resize(120, 105);
    f++;
  }

  bearTurn = new PImage[4];
  int g = 25;
  while (g < 28) {
    bearTurn[g-25] = loadImage("bearTurn/aleksei-lokhanin-bearall-"+g+" (dragged).png");
    bearTurn[g-25].resize(120, 105);
    g++;
  }

  //attack branch
  branchWalk = new PImage[8];
  int i = 0;
  while (i < 8) {
    branchWalk[i] = loadImage("SpiderBranch/pixil-frame-"+i+".png");
    branchWalk[i].resize(710, 225);
    i++;
  }

  branchStatic = new PImage[2];
  int j = 0;
  while (j < 2) {
    branchStatic[j] = loadImage("StaticBranch/pixil-frame-"+j+".png");
    branchStatic[j].resize(710, 225);
    j++;
  }

  //lazer nudist
  lazerNudist = new PImage[4];
  int k = 0;
  while (k < 4) {
    lazerNudist[k] = loadImage("FlyingNudist/pixil-frame-"+k+".png");
    lazerNudist[k].resize(400, 400);
    k++;
  }



  //load lava---------------------------------------------------------------------------------------------------------------------------------------------------
  numberOfFrames = 6;
  gif = new PImage[numberOfFrames];

  int n = 0;
  while (n < numberOfFrames ) {
    gif[n] = loadImage("Lava/lava"+n+".png");
    gif[n].resize(60, 60);
    n++;
  }

  //nudist
  nudist1 = new PImage[2];
  int h = 0;
  while (h < 2) {
    nudist1[h] = loadImage("nudist/nudist"+h+".png");
    nudist1[h].resize(120, 105);
    h++;
  }
  
  //nudist
  baby = new PImage[6];
  int x = 0;
  while (x < 6) {
    baby[x] = loadImage("baby/pixil-frame-"+x+".png");
    baby[x].resize(500, 400);
    x++;
  }
  //numberOfFrames2 = 25;
  
  //shroomy = new PImage[25];
  //int v = 0;
  //while (v < numberOfFrames2) {
  //  shroomy[v] = loadImage("SHROOMY/pixil-frame-"+v+".png");
  //  shroomy[v].resize(1500, 1000);
  //  v++;
  //}
}
