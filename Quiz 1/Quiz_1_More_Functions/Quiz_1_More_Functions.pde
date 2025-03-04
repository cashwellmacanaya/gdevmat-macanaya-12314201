int width = 800, height = 600;
float scale = 20;  
float amplitude = 40, frequency = 0.1;
int globalVariable = 100;
int time = 10000;

void settings() {
  size(width, height);  
}

void setup() {
  background(50);
}

void draw() {
  background(50);
  drawAxes();
  drawQuadratic();
  drawLinear();
  drawSineWave();
  time += 1; 
}

void drawAxes() {
  stroke(200);
  line(width / 2, 0, width / 2, height); 
  line(0, height / 2, width, height / 2); 
}

void drawQuadratic() {
  stroke(255, 255, 0);  
  noFill();
  beginShape();
  for (float x = -width/2; x < width/2; x += 1) {
    float realX = x / scale;
    float realY = realX * realX - 15 * realX - 3;  
    float screenX = width / 2 + x;
    float screenY = height / 2 - realY * scale;
    vertex(screenX, screenY);
  }
  endShape();
}

void drawLinear() {
  stroke(128, 0, 128); 
  noFill();
  beginShape();
  for (float x = -width/2; x < width/2; x += 1) {
    float realX = x / scale;
    float realY = -5 * realX + 30;  
    float screenX = width / 2 + x;
    float screenY = height / 2 - realY * scale;
    vertex(screenX, screenY);
  }
  endShape();
}

void drawSineWave() {
  stroke(0, 0, 255);  
  noFill();
  beginShape();
  for (float x = -width/2; x < width/2; x += 1) {
    float realX = x / scale;
    float realY = amplitude * sin(frequency * realX + time * 0.001);
    float screenX = width / 2 + x;
    float screenY = height / 2 - realY;
    vertex(screenX, screenY);
  }
  endShape();
}

void keyPressed() {
  if (key == 'w') amplitude += 5;
  if (key == 's') amplitude -= 5;
  if (key == 'a') frequency -= 0.01;
  if (key == 'd') frequency += 0.01;
}
