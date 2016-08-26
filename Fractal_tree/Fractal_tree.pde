
//float angle = 0;

void setup() {
  size(400, 400, P3D);
  background(51);
  translate(200, height);

  stroke(255);
  strokeWeight(2);
  branch(100);
}

void draw() {

  rotateY(map(mouseX, 0, width, 0, PI));
}

void branch (float len) {
  float phi = random(0, PI);
  float the = -HALF_PI;

  float x = len*sin(phi)*cos(the);
  float y = len*sin(phi)*sin(the);
  float z = len*cos(phi);

  line(0, 0, 0, x, y, z);
  translate(x, y, z);
  float angle = random(PI/4,PI/6);
  if (len > 3) {

    pushMatrix();
    rotate(angle);
    branch(len * random(.5,.7));
    popMatrix();

    pushMatrix();
    rotate(-angle);
    branch( len * 0.7);
    popMatrix();
  }
}