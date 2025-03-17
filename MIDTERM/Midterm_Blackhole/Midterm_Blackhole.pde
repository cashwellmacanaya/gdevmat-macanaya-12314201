ArrayList<Matter> matters;
BlackHole blackhole;
int n = 300; 

void setup() {
  size(1280, 720, P3D);
  blackhole = new BlackHole(random(width), random(height));
  matters = new ArrayList<Matter>();
  for (int i = 0; i < 100; i++) {
    matters.add(new Matter());
  }
}

void draw() {
  background(0);
  
  blackhole.render();
  
  blendMode(ADD);
  for (Matter m : matters) {
    m.moveTowards(blackhole.position);
    m.render();
  }
  blendMode(NORMAL); 
  
  if (frameCount % n == 0) {
    resetSimulation();
  }
}


void resetSimulation() {
  blackhole = new BlackHole(random(width), random(height));
  matters.clear();
  for (int i = 0; i < 100; i++) {
    matters.add(new Matter());
  }
}
