void setup() {
  size(600, 800);  
  background(255); 
}

void draw() {
  if (frameCount % 300 == 0) { 
    background(255); 
  }

  float meanX = width / 2;  
  float stddevX = width / 4; 
  
  float meanSize = 20;  
  float stddevSize = 10; 
  
  float x = constrain(randomGaussian() * stddevX + meanX, 0, width);
  float minY = height;  
  float maxY = 0;
  float y = random(maxY, minY); 
  
  float size = max(5, randomGaussian() * stddevSize + meanSize);
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float alpha = random(10, 100);
  
  fill(r, g, b, alpha);
  noStroke();
  ellipse(x, y, size, size);
}
