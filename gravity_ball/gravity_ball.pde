float x, y, velx, vely, gravity;
int sz=50;
void setup() {
  size(800, 800);
  x=width/2;
  y=height*.25;
  velx=3;
  vely=0;
  gravity=1;
}
void draw() {
  background(0);
  ellipse(x, y, sz, sz);
  vely+= gravity;
  x+= velx;
  y+= vely;
  if (y+sz/2>= height) {
    y=height-sz/2;
    vely*=-1;
  }
  if(x+sz/2>= width || x-sz/2<=0){
   velx*=-1; 
  }
}

