boolean pick = true;


PImage firstFloor;
void setup() {
  size(1000, 1000);
  fill(200);
  starttextField = new StartTextField(100, 200, 300, 40);
  fill(255);
  endtextField = new EndTextField(100, 200, 300, 40);
  firstFloor = loadImage("plantegning_lokalenumre_2.png");
  vectorSetup();
  roomSetup();
}

void draw() {
  background(255);
  //image(firstFloor, 0, 0,1000,350);
  image(firstFloor, 0, 100, 1000, 800);
  //image(firstFloor, 0,700,1000,300);
  fill(startvalue);
  starttextField.display();
  fill(endvalue);
  endtextField.display();
  pathFinding(A1, 20, R1, 1);
  fill(0);
  noStroke();
  //Tegn Alle Pathfinding punkter
  for (int i = 0; i < A1.length; i++ ) {
    circle(A1[i].x, A1[i].y, 5);
  }
  //Tegn Alle Lokalers punkter
  fill(255, 0, 0);
  for (int i = 0; i < R1.length; i++ ) {
    circle(R1[i].x, R1[i].y, 5);
  }
  text(mouseX+"           "+mouseY, 110, 110);
}

void mousePressed(){
  
}

void keyPressed() {
  starttextField.keyPressed();
  endtextField.keyPressed();
}

String roomNumber(int i){
if(i<10){
return("0.0"+i);
}else{
return("0."+i);
}
}
