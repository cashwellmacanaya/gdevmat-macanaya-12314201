Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, 0.4);

void setup() {
  size(1280, 720, P3D);
  for (int i = 0; i < walkers.length; i++) {
    float mass = i + 1; 
    walkers[i] = new Walker(mass);
  }
}

void draw() {
  background(80);
  for (Walker w : walkers) {
    w.applyForce(wind);
    w.applyForce(gravity);
    w.update();
    w.checkEdges();
    w.render();
  }
}
