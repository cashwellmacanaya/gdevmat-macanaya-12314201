class Walker {
  PVector position;
  PVector speed;
  
  Walker() {
    position = new PVector(width / 2, height / 2);
    speed = new PVector(5, 8);
  }
  
  void moveAndBounce() {
    position.add(speed);
    
    if (position.x > width || position.x < 0) {
      speed.x *= -1;
    }
    
    if (position.y > height || position.y < 0) {
      speed.y *= -1;
    }
  }
  
  void display() {
    fill(182, 52, 100);
    circle(position.x, position.y, 50);
  }
}
