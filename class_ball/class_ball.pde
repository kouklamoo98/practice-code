Ball[] b=new Ball[100];    //declare new object


void setup() {
  size(800, 600); 
  for (int i=0; i< b.length; i++) {
    b[i] = new Ball();    //initialize ball
  }
}

void draw() {
  background(0);
  for (int i=0; i< b.length; i++) {
    b[i].move();
    b[i].bounce();
    b[i].display();
  }
}
class Ball {
  //properties of Ball class
  float sz;
  PVector loc, vel;

  Ball() {
    sz = 50;
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
}

