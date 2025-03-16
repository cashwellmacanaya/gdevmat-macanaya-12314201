void setup() {
  size(1080, 720, P3D);
  camera(0, 0 , 500, 0, 0, 0, 0, -1, 0);
}

PVector mousePos() {
  float x = mouseX - width / 2;  
  float y = -(mouseY - height / 2);  
  return new PVector(x, y);
}

void draw() {
  background(130);
  
  PVector mouse = mousePos();
  mouse.normalize().mult(300);

  float angle = -atan2(mouse.y, mouse.x); 

  pushMatrix();  
  translate(0, 0);
  rotate(angle); 
  

  strokeWeight(20);
  stroke(255, 0, 0, 80); 
  line(0, 0, 300, 0);
  line(0, 0, -300, 0);
  
  strokeWeight(10);
  stroke(255); 
  line(0, 0, 300, 0);
  line(0, 0, -300, 0);
  
  
  strokeWeight(30);
  stroke(0);
  line(-20, 0, 20, 0); 

  popMatrix();  

  println("Blade Magnitude: " + mouse.mag());
}
