class Panel {
  String title;
  String content;
  color text = color(75);
  int x = 15;
  int y = height/5;
  int yStall = height/2;
  Buttons buttonGroup;
  BackButton back;
  Icon myIcons;
  int stalls;

  Panel(String title_, Buttons buttonGroup_, boolean backNeeded, int backPanel_) {
    this.title = title_;
    this.buttonGroup = buttonGroup_;
    if (backNeeded == true && backPanel_ != -1) {
      back = new BackButton(backPanel_);
    }
  }

  Panel(String title_, String content_, boolean backNeeded, int backPanel_, int stalls_) {
    this.title = title_;
    this.content = content_;
    this.stalls = stalls_;

    if (backNeeded == true && backPanel_ != -1) {
      back = new BackButton(backPanel_);
    }
  }

  void display() {
    // draw the title
    fill(text);
    textSize(25);
    textAlign(CENTER);
    text(title, width/2, 32);

    // draw the buttons
    if (buttonGroup != null) {
      buttonGroup.display();
    }

    // draw the content
    if (content != null) {
      fill(text);
      textAlign(LEFT);
      textSize(20);
      text("Location:", x, y - 23); 
      textSize(15);
      text(content, x, y);

      // draw icons
      if (stalls != 0) {
        myIcons = new Icon(stalls, x, yStall);
        myIcons.display();
      }
    }

    // draw the back button
    if (back != null) {
      back.display();
    }
  }
}
