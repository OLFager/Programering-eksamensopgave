class StartTextField {
  String starttext = ""; // Variable to store input text
  int x, y, width, height;

  StartTextField(int x, int y, int width, int height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  void display() {
    // Viser tekstfelt
    stroke(0);
    rect(x, y, width, height);
    // Viser tekst
    fill(0);
    textSize(20);
    text(starttext, x + 171, y + height/2 + 7);
    text("Indtast start lokale:",105,226);
  }

  void keyPressed() {
    // Tjekker om tast er valid
    if (key >= '0' && key <= '9' && starttext.length() < 3) { // Begrænser tekstlængden til 4
      // Tilføjer karaktere til tekst
      starttext += key;
      println(starttext);
    }
    // Tjekker for backspace
    else if (key == BACKSPACE && starttext.length() > 0) {
      // Fjerner sidste karakter fra tekstfelt
      starttext = starttext.substring(0, starttext.length() - 1);
      
    }
  }
}

StartTextField starttextField;
