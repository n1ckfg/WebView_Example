WebViewer webViewer;

void setup(){
    size(800, 480, FX2D);
    webViewer = new WebViewer(400, 400);
}

void draw() {
  background(0);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 20, 20);
}
