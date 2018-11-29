float xPos = -50;
float yPos = 0;
float a, aVel;
float aAcc = 0.001;

void setup() {
  size(600, 600);
}

void draw() {
  rectMode(CENTER);

  aAcc = map(mouseX, 0, width, -0.001, 0.001);
  a += aVel;
  aVel += aAcc;
  
  float c = map(cos(a), -1, 1, 100, 200);

  pushMatrix();
  translate(xPos, yPos);
  rotate(a);
  fill(c*2, c, c/2);
  rect(0, 0, 100, 100);
  popMatrix();
  xPos = xPos + 5;
  if (xPos > width + 50) {
    xPos = 0;
    yPos = yPos + 75;
  }
  if (yPos > height + 50) {
    yPos = 0;
  }
  
  println(c);
}
