class Buttons {
  Button[] buttons;
  int num;
  float yPos = 150;
  float xPos = 75;
  float buttonSpace = 118;
  String[] names;
  String[] link;

  Buttons(String[] names_, String[] link_) {
    num = names_.length;
    this.names = names_;
    this.link = link_;
    buttons = new Button[num];
    int row = 1;    // row counter
    int j = 0;      // resetable buttonSpace counter

    // prints the rows of buttons
    for (int i = 0; i < buttons.length; i++) {
      buttons[i] = new Button(xPos + buttonSpace * j, yPos, names[i], link[i]);
      j++;       // increase buttonSpace counter after every created button

      if (j >= 4) {
        row++;                // row counter increment
        yPos = yPos * row;    // yPos increment to create a new row
        j = 0;                // reset buttonSpace counter to 0
      }
    }
  } // end constructor

  void display() {
    for (int i = 0; i < buttons.length; i++) {
      buttons[i].detect();    // hover detection
      buttons[i].display();   // displays buttons
    }
  } // display end

  void checkButtons() {
    for (int i = 0; i < buttons.length; i++) {
      buttons[i].buttonAction();
    }
  }
} // class end

