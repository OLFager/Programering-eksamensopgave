PVector[] A1;
void vectorSetup() {
  A1 = new PVector[300];
  for (int i = 0; i < A1.length; i++) {
    A1[i] = new PVector();
  }
  fastCreate(0, 100, 530);
}
void fastCreate(int i, int x, int y) {
  A1[i] = new PVector(x, y);
}
