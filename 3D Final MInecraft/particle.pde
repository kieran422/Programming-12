class Particle extends GameObject {
  PVector pp;


  Particle() {
    float vx = random(1, 200);
    float vy = random(1, 200);
    float vz = random(1, 200);
    pp = new PVector(vx, vy, vz);
    pp.setMag(500);
  }

  void act() {
    loc.add(pp);
  }
}
