Ellipse e;

void setup(){
  size(400,200);
  e = new Ellipse(100,100);
}

void draw(){
  background(57,255,127);
  fill(255);
  ellipse(100,100,180,180);
  fill(255,0,0);
  float stop=mouseX/50.0;
  text(stop,200,100);
  arc(100,100,180,180,0,stop);
  e.draw();
}