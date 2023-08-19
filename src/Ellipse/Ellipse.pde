class Ellipse {
  float x, y;
  
  Ellipse(float x, float y){
    this.x = x;
    this.y = y;
  }

  void draw(){
    fill(255, 0, 0);
    ellipse(x, y, 10, 10);
  }
}