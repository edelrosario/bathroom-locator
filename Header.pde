class Header {
  color bg = color(126, 204, 255);        // background color
  color stTop = color(135);               // stroke color - top line
  color fRect = color(123, 193, 232);     // fill color - Header Box
  color stBot = color(166, 212, 255);     // stroke color - bottom line
  color stSide = color(164, 183, 210);    // stroke color - side line
  float rectH = 50;                       // rectangle height

  Header() {
  }

  void display() {
    background(bg);
    fill(fRect);
    noStroke();
    rect(0, 0, width, rectH);
    strokeWeight(2);
    stroke(stTop);                        // draw top line
    line(0, 0, width - 2, 1);
    stroke(stBot);                        // draw bottom line
    line(0, 50, width, rectH);
    stroke(stSide);                       // draw side line
    line(width - 2, 0, width - 2, rectH);
  }
} // class end

