Walker walker;

void setup() {
  size(1280, 720, P3D);
  walker = new Walker();
}

void draw() {
  background(255);
  walker.moveAndBounce();
  walker.display();
}
