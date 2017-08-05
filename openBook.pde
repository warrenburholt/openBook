int pageAngle = 0;
int angleChange = 5;
final int ANGLE_LIMIT = 180;

void setup()
{
size(400, 400, P3D);
smooth();
frameRate(10);
}

void draw()
{
  background(128);
  pushMatrix();
  translate(200,100); // place robot so arms are always on screen
  drawBook();
  pageAngle += angleChange;
  
  // if the arm has moved past its limit,
  // reverse direction and set within limits.
  if (pageAngle > ANGLE_LIMIT || pageAngle < 0)
  {
    angleChange = -angleChange;
    pageAngle += angleChange;
  }
  popMatrix();
}

void drawBook() {
  pushMatrix();
  //translate(200, 0);
  rotateY(radians(pageAngle));
  rect(0, 0, 200, 200);
  popMatrix();
}