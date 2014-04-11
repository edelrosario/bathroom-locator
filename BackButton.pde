class BackButton {
  String buttonText = "Back";
  float x = 5;
  float y = 10;
  float w = 100;
  float h = 30;
  float cornerRadius = 7;
  int backPanel;
  boolean hovering;

  BackButton(int backPanel_) {
    backPanel = backPanel_;
  }

  void display() {
    // check for collision
    detect();

    // draw rect
    fill(255);
    if (hovering) {
      fill(200);
    }
    stroke(0);
    rect(x, y, w, h, cornerRadius);

    // draw button text
    textAlign(CENTER);
    textSize(20);
    fill(0);
    noStroke();
    text(buttonText, x+50, y+23);
  }

  void detect() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      hovering = true;
    } 
    else {
      hovering = false;
    }
  }
  
  void checkClick() {
    detect();
    if (hovering) {
      manager.currentPanel = backPanel;
    }
  }
}

