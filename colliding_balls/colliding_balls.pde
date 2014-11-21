PVector loc, vel, acc;
PVector mouse;
int sz = 70;

void setup() {
  size( 800, 800);
  loc = new PVector(width/2, height/2);
  vel= PVector.random2D();
  acc = new PVector();
  noCursor();
  mouse = new PVector();
}

void draw() {
  mouse.set(mouseX, mouseY);
  background(0);
  //make ball move
  vel.add(acc);
  loc.add(vel);
//check if mouse is in ball
  if (loc.dist(mouse) < sz/2) {
    fill(25, 100, 200);
    if (loc.x < mouse.x) {
      vel.x = -abs(vel.x);
    } else {
      vel.x = abs(vel.x);
    }
    if (loc.y < mouse.y) {
      vel.y = -abs(vel.y);
    } else {
      vel.y = abs(vel.y);
    }
  } else {
    fill(200, 30, 100);
  }

  ellipse(loc.x, loc.y, sz, sz);
  //bounce ball
  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if ( loc.y + sz/2 > height || loc.y - sz/2 <0) {
    vel.y *= -1;
  }
  //small circle to show mouse loc
  ellipse(mouse.x, mouse.y, 5, 5);
}


