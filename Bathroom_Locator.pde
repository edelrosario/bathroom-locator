// Global variables here
Header myHeader;
PanelManager manager;

void setup() {
  size(500, 600);
  //initialization of global variables
  myHeader = new Header();
  manager = new PanelManager();
}

void draw () {
  // draws Building Selection
  myHeader.display();
  manager.display();
}

// mouseClicked method to help change screens

void mousePressed() {
  manager.checkPanel();
}
