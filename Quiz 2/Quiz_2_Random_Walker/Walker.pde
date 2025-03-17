class Walker {
  float x, y;
  
  Walker(float startX, float startY) {
    x = startX;
    y = startY;
  }
  
   void render() {
    float r = random(255);
    float g = random(255);
    float b = random(255);
    float a = random(50, 100); 

    fill(r, g, b, a);
    circle(x, y, 30);
  }
  
  void randomWalk() {
    int rng = int(random(8)); 
    
    if (rng == 0) y += 10;      
    else if (rng == 1) y -= 10; 
    else if (rng == 2) x += 10; 
    else if (rng == 3) x -= 10; 
    else if (rng == 4) { x += 10; y += 10; } 
    else if (rng == 5) { x -= 10; y += 10; }
    else if (rng == 6) { x += 10; y -= 10; } 
    else if (rng == 7) { x -= 10; y -= 10; } 
  }
  
  void randomWalkBiased() {
    float rng = random(100); 
    
    if (rng < 40) x += 10; 
    else if (rng < 60) x -= 10; 
    else if (rng < 80) y -= 10; 
    else y += 10; 
  }
}
