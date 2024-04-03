PImage firstFloor;
void setup() {
  size(1000, 1000);
  firstFloor = loadImage("plantegning_lokalenumre_2.png");
  vectorSetup();
  roomSetup();
}

void draw() {
  background(255);
  //image(firstFloor, 0, 0,1000,350);
  image(firstFloor, -70, 100, 1110, 800);
  //image(firstFloor, 0,700,1000,300);
  pathFinding(A1, 1, R1, 1);
  fill(0);
  noStroke();
  //Tegn Alle Pathfinding punkter
  for (int i = 0; i < A1.length; i++ ) {
    circle(A1[i].x, A1[i].y, 10);
  }
  //Tegn Alle Lokalers punkter
  fill(255, 0, 0);
  for (int i = 0; i < R1.length; i++ ) {
    circle(R1[i].x, R1[i].y, 10);
  }


  text(mouseX+"           "+mouseY, 110, 110);
}
