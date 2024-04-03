class EndTextField {
  String endtext = ""; // Variable to store input text
  int x, y, width, height;

  EndTextField(int x, int y, int width, int height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  void display() {
    // Viser tekstfelt
    stroke(0);
    rect(x, y+50, width, height);
    // Viser tekst
    fill(0);
    textSize(20);
    text(endtext, x + 171, y + height/2 + 57);
    text("Indtast slut lokale:",105,276);
  }

  void keyPressed() {
    // Tjekker om tast er valid
    if (key >= '0' && key <= '9' && endtext.length() < 3) { // Begrænser tekstlængden til 4
      // Tilføjer karaktere til tekst
      endtext += key;
      println(endtext);
    }
    // Tjekker for backspace
    else if (key == BACKSPACE && endtext.length() > 0) {
      // Fjerner sidste karakter fra tekstfelt
      endtext = endtext.substring(0, endtext.length() - 1);
      
    }
  }
}

EndTextField endtextField;
