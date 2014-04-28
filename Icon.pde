class Icon {
  PImage woman;
  PImage man;
  String header = "Amount of Stalls \n";
  String subheader1 = "Mens: ";
  String subheader2 = "Womens: ";
  float x, y;
  int amt;

  Icon(int amt_, float x_, float y_) {
    woman = loadImage("Womens.png");
    man = loadImage("Mens.png");
    amt = amt_;
    x = x_;
    y = y_;
  }

  void display() {
    textSize(20);
    fill(75);
    text(header, x, y - 20);
    textSize(15);
    text(subheader2, x, y);
    text(subheader1, x + 220, y);
    for (int i = 1; i <= amt; i++) {
      tint(255);
      image(woman, (x+5)*i, y + 5);
      image(man, (x+5)*i + 220, y + 5);
    }
    textSize(10);
    textAlign(CENTER);
    text("1 icon = < 2 stalls        2 icons = 3 - 5 stalls        3 icons = 5 < stalls", width/2, y + 75);
  }
}

