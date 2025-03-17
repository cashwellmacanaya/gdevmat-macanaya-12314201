class Matter {
  PVector position;
  float scale;
  PVector velocity;
  color col;
  
  Matter() {
    float x = constrain((float) randomGaussian() * width / 6 + width / 2, 0, width);
    float y = constrain((float) randomGaussian() * height / 6 + height / 2, 0, height);
    position = new PVector(x, y);
    scale = random(5, 20);
    velocity = new PVector();
    col = color(random(255), random(255), random(255));
  }
  
  void moveTowards(PVector target) {
    PVector direction = PVector.sub(target, position);
    float distance = direction.mag(); 
    
    
    float speed = map(distance, 0, width / 2, 1, 5); 
    speed = constrain(speed, 1, 5); 
    
    direction.normalize();
    direction.mult(speed);
    
    position.add(direction);
}

  
  void render() {
  noStroke();
  fill(red(col), green(col), blue(col), 40); 
  circle(position.x, position.y, scale * 2);
  
  fill(red(col), green(col), blue(col), 80); 
  circle(position.x, position.y, scale * 1.5);
  
  fill(col); 
  circle(position.x, position.y, scale);
}
}
