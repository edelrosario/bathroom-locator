class Panel {
  String title;
  String content;
  color text = color(75);
  int x = 15;
  int y = height/5;
  int stalls;
  Buttons buttonGroup;
  BackButton back;

  Panel(String title_, Buttons buttonGroup_, boolean backNeeded, int backPanel_) {
    this.title = title_;
    this.buttonGroup = buttonGroup_;
    if (backNeeded == true && backPanel_ != -1) {
      back = new BackButton(backPanel_);
    }
  }

  Panel(String title_, String content_, boolean backNeeded, int backPanel_) {
    this.title = title_;
    this.content = content_;
    
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
      textSize(18);
      text("Location:", x, y - 23); 
      textSize(12);
      text(content, x, y);
    }
    
    // draw the back button
    if (back != null) {
      back.display();
    }
  }
}

