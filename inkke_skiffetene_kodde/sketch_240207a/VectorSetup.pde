PVector[] A1;
void vectorSetup() {
  A1 = new PVector[3];
  for (int i = 0; i < A1.length; i++) {
    A1[i] = new PVector();
  }
  fastCreate(0, 100, 530);
  fastCreate(1, 100, 530);
  fastCreate(2, 100, 530);
}
void fastCreate(int i, int x, int y) {
  A1[i] = new PVector(x, y);
}
