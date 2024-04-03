PVector[] R1;
void roomSetup() {
  R1 = new PVector[300];
  for (int i = 0; i < R1.length; i++) {
    R1[i] = new PVector(-10, -10);
  }
  roomCreate(1, 280, 400);
  roomCreate(4, 280, 470);
  roomCreate(7, 325, 370);
}
void roomCreate(int i, int x, int y) {
  R1[i] = new PVector(x, y);
}
