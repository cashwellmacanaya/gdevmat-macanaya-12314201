class BlackHole {
  PVector position;
  float scale = 50;
  
  BlackHole(float x, float y) {
    position = new PVector(x, y);
  }
  
  void render() {
    fill(255);
    circle(position.x, position.y, scale);
  }
}
