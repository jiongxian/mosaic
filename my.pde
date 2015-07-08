int h = 20, w = 20, SCREEN_WIDTH = 512, SCREEN_HEIGHT = 512;
int count = 0;
float margin_x = h * 0.50, margin_y = w * 0.50;
void setup(){
  size(SCREEN_WIDTH, SCREEN_HEIGHT);
  colorMode(HSB, 360, 100, 100);
  fill(0);
}
void draw(){
  if (count < 1){
  background(0);
  noStroke();
  directionalLight(128, 128, 140, 1, 1, 0); 
  for (int x = w + w; x < SCREEN_WIDTH - w * 2; x += w + margin_x){
    for (int y = h + h; y < SCREEN_HEIGHT - h * 2; y += h + margin_y){
       fill(random(360), 100, random(70, 100));
       float ratio = sqrt( random(0.2,1.8));
       ellipse(x, y, w * ratio, h * ratio);
       println(w, h);
    }
  }
  }
  count ++;
}

