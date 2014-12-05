Bounca[] bouncie = new Bounca[100];
void setup() {
  size(800, 800);
  for (int i =0; i< bouncie.length; i++) {
    bouncie[i] = new Bounca(random(5, 50), random(.5, 10));
  }
}

void draw() {
  background(0);
  for (int i = 0); 
  i < bouncie.length; 
  i++) {
    bouncie[i].display();
    bouncie[i].move();
    bouncie[i].wallBounce();
    for (int j = 0; j < bouncie.length; j++) {
      if (i!=j) {
        bouncie[i].collideWith(bouncie[j]);
      }
    }
  }
}

class Bounca {
  PVector loc, vel;
  float sz;
  float speed;

  Bounca(float tempsz, float tempspeed) {
    sz = tempsz;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = PVector.random2D();
    speed = tempspeed;
    vel.mult(speed);
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move (); 
  {
    loc.add(vel);
  }

  void wallBounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y +sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }

void collideWith( Bounca someOtherBall){
  if (loc
