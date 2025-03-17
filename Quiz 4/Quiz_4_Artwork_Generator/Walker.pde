public class Walker {
  public float x, y;
  public float tx = 0, ty = 10000;  
  public float ts = 20000;          
  public float tr = 30000, tg = 40000, tb = 50000;  

  Walker() {  
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
  }

  void render() {
    float r = map(noise(tr), 0, 1, 0, 255);
    float g = map(noise(tg), 0, 1, 0, 255);
    float b = map(noise(tb), 0, 1, 0, 255);

    
    float[] colors = {r, g, b};
    int minIndex = 0;
    
    for (int i = 1; i < 3; i++) {
      if (colors[i] < colors[minIndex]) {
        minIndex = i;
      }
    }
    
    colors[minIndex] = 255;
    r = colors[0];
    g = colors[1];
    b = colors[2];

    fill(r, g, b, 100); 
    noStroke();
    
    float size = map(noise(ts), 0, 1, 5, 150);
    circle(x, y, size);
  }

  void perlinWalk() {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);

    tx += 0.01f;
    ty += 0.01f;
    ts += 0.01f;
    tr += 0.01f;
    tg += 0.01f;
    tb += 0.01f;
  }
}
