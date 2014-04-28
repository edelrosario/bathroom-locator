class Button {
  // attributes
  float y;              // y position
  float x;              // x position
  float w;              // diameter of circle
  color c;              // fill color
  color st;             // stroke color
  float mouseDist;
  String name;          // building name
  String link;          // link code - button identification
  boolean hovering;
  PFont font;

  //constructor
  Button(float x_, float y_, String name_, String link_) {
    x = x_;
    y = y_;
    w = 100;
    c = color(126, 204, 255);
    st = color(166, 212, 255);
    name = name_;
    link = link_;
    hovering = false;
    font = loadFont("Chalkboard-Bold-18.vlw");
  }

  // detects mouse distance from button
  void detect() {
    mouseDist = dist(x, y, mouseX, mouseY);
    if (mouseDist < w/2) {
      this.hovering = true;
    } 
    else {
      this.hovering = false;
    }
  }

  // displays the button and the text inside it
  void display() {
    detect();
    if (hovering) {
      stroke(255);
      fill(st);
    }
    else {
      stroke(st);
      fill(c);
    }
    ellipse(x, y, w, w);
    displayName();
  }

  // creates the text that goes inside the button
  void displayName() {
    fill(75);
    textFont(font);
    textAlign(CENTER);
    textSize(20);
    text(name, x, y + 7);
  }

  void buttonAction() {
    if (hovering) {
      println(name + ", " + link);      // checks to see if correct button was selected
      manager.wasClicked(name, link);
    }
  }
} // class end

