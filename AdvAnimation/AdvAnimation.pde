Ripple[] myRipples;
int numripples = 5;

Rain[] myRain;
int numrain;

Grass[] myGrass;
int numgrass;

Fog[] myFog;
int numFog = 30;




void setup() {
  size(800, 800);
  background(0,0);
  noFill();

  //ripples

  myRipples = new Ripple[numripples]; //constructor
  int i_r = 0;
  while (i_r < numripples) {
    myRipples[i_r] = new Ripple();
    i_r++;
  }

  //shooting stars
  numrain = 100;
  myRain = new Rain[numrain]; //constructor
  int i_ra= 0;
  while (i_ra < numrain) {
    myRain[i_ra] = new Rain();
    i_ra++;
  }

  

  //Fog
  myFog = new Fog[numFog]; //when calling a constructor use new
  int i_F = 0;
  while (i_F<numFog) {
    myFog[i_F] = new Fog();
    i_F++;
  }
  
   //grass
  numgrass = 1000;
  myGrass = new Grass[numgrass]; //constructor
  int i_g = 0;
  while (i_g < numgrass) {
    myGrass[i_g] = new Grass();
    i_g++;
  }

  stroke(255);
  strokeWeight(1);
}

void draw() {


  //ripples
  int i_r = 0;
  while (i_r < numripples) {
    myRipples[i_r].show();
    myRipples[i_r].act();
    i_r++;
  }

  //rain
  int i_s = 0;
  while (i_s < numrain) {
    myRain[i_s].show();
    myRain[i_s].act();
    i_s++;
  }

  
  //fog
  int i_F = 0;
  while (i_F<numFog) {
    myFog[i_F].show_Fog();
    myFog[i_F].act_Fog();
    i_F++;
  }

  //background
  fill(0, 5);
  rect(-100, -100, 900, 900);
  
  
  //pond
  fill(0, 100, 200, 100);
  stroke(0);
  beginShape();
  curveVertex(-200, 900);
  curveVertex(-200, 900);
  curveVertex(-100, 670);
  curveVertex(0, 600);
  curveVertex(200, 580);
  curveVertex(400, 570);
  curveVertex(430, 700);
  curveVertex(450, 800);
  curveVertex(600, 900);
  curveVertex(600, 900);
  endShape();

//grass
  int i_g = 0;
  while (i_g < numgrass) {
    myGrass[i_g].show();
    myGrass[i_g].shrink();
    i_g++;
  }
}
