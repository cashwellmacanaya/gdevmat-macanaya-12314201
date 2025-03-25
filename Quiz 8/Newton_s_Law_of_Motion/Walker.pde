public class Walker {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float velocityLimit = 10;
  float scale;
  float mass;
  color walkerColor;

  public Walker(float m) {
    this.mass = m;
    this.scale = mass * 15;
    this.position = new PVector(-500, 200);
    this.velocity = new PVector();
    this.acceleration = new PVector();
    this.walkerColor = color(random(255), random(255), random(255), 150); 
  }

  public void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  public void update() {
    velocity.add(acceleration);
    velocity.limit(velocityLimit);
    position.add(velocity);
    acceleration.mult(0);
  }

  public void render() {
    fill(walkerColor);
    noStroke();
    circle(position.x, position.y, scale);
  }

  public void checkEdges() {
    if (position.x > width) {
      position.x = width;
      velocity.x *= -1;
    } else if (position.x < 0) {
      position.x = 0;
      velocity.x *= -1;
    }
    if (position.y > height) {
      position.y = height;
      velocity.y *= -1;
    } else if (position.y < 0) {
      position.y = 0;
      velocity.y *= -1;
    }
  }
}
