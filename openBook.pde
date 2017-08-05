float inc = 1;

void setup()
{

size(200, 200, P3D);


}

void draw() {
  background(0);
  
  frameRate(1);
  pushMatrix();
  translate(width/2, height/2);
  //inc += 0.01;
  for (int x = 1; x < 20; x += 1) {
  rotateY(PI/x);
  rect(-26, -26, 52, 52);
  }
  popMatrix();
}