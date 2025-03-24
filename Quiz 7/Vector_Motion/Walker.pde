public class Walker 
{
  public PVector position;
  public PVector velocity;
  public PVector acceleration;
  public float velocityLimit = 8; 
  public float scale;
  
  public Walker(PVector startPos, float s) 
  {
    position = startPos;
    velocity = new PVector();
    acceleration = new PVector();
    scale = s;
  }
  
  public void update() 
  {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector direction = PVector.sub(mouse, position); 
    direction.normalize(); 
    direction.mult(0.2); 
    acceleration.set(direction); 

    velocity.add(acceleration);
    velocity.limit(velocityLimit);
    position.add(velocity);
  }

  
  public void render() 
  {
    stroke(0); 
    strokeWeight(2); 
    fill(255, 100);
    circle(position.x, position.y, scale);
  }
  
  public void checkEdges() {
    if (position.x > width) position.x = 0;
    if (position.x < 0) position.x = width;
    if (position.y > height) position.y = 0;
    if (position.y < 0) position.y = height;
  }
}
