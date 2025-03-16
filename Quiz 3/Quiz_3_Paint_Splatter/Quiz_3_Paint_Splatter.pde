void setup() {
  size(600, 800);  
  background(255);
  noLoop();  
}

void draw() {
  float meanX = width / 2;  
  float stddevX = width / 4; 
  
  float meanSize = 20;  
  float stddevSize = 10; 
  
  int splatterCount = 300; 
  
  for (int i = 0; i < splatterCount; i++) {
    float x = constrain(randomGaussian() * stddevX + meanX, 0, width);  
    float y = random(height);  
    
    float size = max(5, randomGaussian() * stddevSize + meanSize);  
    float r = random(255);
    float g = random(255);
    float b = random(255);
    float alpha = random(10, 100);
    
    fill(r, g, b, alpha);
    noStroke();
    ellipse(x, y, size, size);
  }
}
