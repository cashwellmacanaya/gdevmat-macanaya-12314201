Walker[] walkers = new Walker[100]; 

void setup() 
  {
  size(1280, 720, P3D);
  
  for (int i = 0; i < walkers.length; i++) {
    walkers[i] = new Walker(new PVector(random(width), random(height)), random(10, 20));
  }
}



void draw() 
 {
  background(80);
  
  for (Walker w : walkers) {
    w.update();
    w.render();
    w.checkEdges();
 }
}
