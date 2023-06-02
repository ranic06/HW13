void setup() {
  size(600, 600, P3D);
  noStroke();
}
void draw() {
  background(255);
  lights();
  
  translate(width/2, height/2+100, 0); //body
  fill(255);
  sphere(100);
  pushMatrix();
  translate(0, -120, 0);
  sphere(70);
  popMatrix();
  
  pushMatrix(); //head
  translate(0, -200, 0);
  sphere(50);
  popMatrix();
  
  fill(150, 75, 0); //arms
  pushMatrix();
  translate(-70, -120, 0);
  rotateZ(PI/6);
  cylinder(10, 70, 20, 10);
  popMatrix();
  pushMatrix();
  translate(70, -120, 0);
  rotateZ(-PI/6);
  cylinder(10, 70, 20, 10);
  popMatrix();
  
  fill(255, 127, 0); //nose
  pushMatrix();
  translate(0, -220, 50);
  rotateX(PI/2);
  scale(1, 1, 3);
  cylinder(5, 0, 20, 10);
  popMatrix();
  
  fill(0); //eyes
  pushMatrix();
  translate(-20, -220, 40);
  sphere(5);
  popMatrix();
  pushMatrix();
  translate(20, -220, 40);
  sphere(5);
  popMatrix();
}

void cylinder(float r1, float r2, float h, int res) {
  float angle, x1, z1, x2, z2;
  beginShape(QUAD_STRIP);
  for (int i = 0; i <= res; i++) {
    angle = TWO_PI / res * i;
    x1 = r1 * cos(angle);
    z1 = r1 * sin(angle);
    x2 = r2 * cos(angle);
    z2 = r2 * sin(angle);
    vertex(x1, -h/2, z1);
    vertex(x2, h/2, z2);
  }
  endShape(CLOSE);
}
