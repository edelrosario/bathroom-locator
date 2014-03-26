class Panel {
  String title;
  String content;
  color text = color(75);
  Buttons buttonGroup;

  Panel(String title_, Buttons buttonGroup_) {
    this.title = title_;
    this.buttonGroup = buttonGroup_;
  }

  Panel(String title_, String content_) {
    this.title = title_;
    this.content = content_;
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
      textSize(12);
      textAlign(LEFT);
      text(content, 15, height/2);
    }
  }
}

