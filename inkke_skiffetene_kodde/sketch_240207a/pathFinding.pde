void pathFinding(PVector[] positions, int pos, PVector[] Target, int tpos) {
  if (positions[pos].x < Target[tpos].x) {
    for (; positions[pos].x != Target[tpos].x; pos ++) {
      //println(positions[pos].x +"  "+positions[pos].y + "  " + positions[pos+1].x + "  " + positions[pos+1].y);
      stroke(5);
      strokeWeight(5);
      fill(0);
      line(positions[pos].x, positions[pos].y, positions[pos+1].x, positions[pos+1].y);
    }
  }

  if (positions[pos].x > Target[tpos].x) {
    for (; positions[pos].x != Target[tpos].x; pos --) {
      //println(positions[pos].x +"  "+positions[pos].y + "  " + positions[pos-1].x + "  " + positions[pos-1].y);
      stroke(5);
      strokeWeight(5);
      fill(0);
      line(positions[pos].x, positions[pos].y, positions[pos-1].x, positions[pos-1].y);
    }
  }
}
