class PanelManager {
  Panel[] panels;
  int currentPanel;
  // Leads to the corresponding information of the selected button
  Panel home;
  Panel marston, marston1, marston2, marston3, marston4, marston5;
  Panel reitz;

  PanelManager() {
    currentPanel = 0;

    // HOME
    String[] homeStrings = {
      "Marston", "Reitz"
    };
    String[] homeID = { 
      "MAR", "REI"
    };
    Buttons homeButtons = new Buttons(homeStrings, homeID);
    home = new Panel("Bathroom Locator", homeButtons);

    // MARSTON
    String[] marstonStrings = {
      "1", "2", "3", "4", "5"
    };
    String[] marID = { 
      "M1", "M2", "M3", "M4", "M5"
    };
    Buttons marstonButtons = new Buttons(marstonStrings, marID);
    marston = new Panel("Marston Floors", marstonButtons);

    // REITZ
    String[] reitzStrings = { 
      "Basement", "Ground", "1", "2", "3"
    };
    String[] reiID = { 
      "Rb", "Rg", "R1", "R2", "R3"
    };
    Buttons reitzButtons = new Buttons(reitzStrings, reiID);
    reitz = new Panel("Reitz Floors", reitzButtons);

    // MARSTON1
    String content1 = "Walk towards the bookshelves behind study tables, and take a left." + '\n' +
      "You will walk all the way down the pathway between two rows of bookshelves, " + '\n' +
      "and the bathrooms will be located on your right.";
    marston1 = new Panel("Floor 1 - Marston", content1);

    // MARSTON2
    String content2 = "Find the study rooms and enter the hallway between the study rooms and front" + '\n' + 
      "desk. Go all the way to the end of the hallway and the bathrooms will be on your" + '\n' + 
      "right";
    marston2 = new Panel("Floor 2 - Marston", content2);

    // MARSTON3
    String content3 = "Take the first left past the elevator and bookshelves.  The bathroom will be in" + '\n' +
      "the corner at the end of the rows of tables.  If somewhere else, head towards the" + '\n' +
      "side of the building that is facing towards Turlington and the bathrooms will be" + '\n' +
      "on the right.";
    marston3 = new Panel("Floor 3 - Marston", content3);

    // MARSTON4
    String content4 = "Take the first left past the elevators and walk past the bookshelves until you reach" + '\n' +
      "the cubicles.  The bathroom will be located on the right side (with the bookshelves" + '\n' +
      "behind you).  If somewhere else, head towards the side of the building that is " + '\n' +
      "facing towards Turlington and the bathrooms will be on the right.";
    marston4 = new Panel("Floor 3 - Marston", content4);

    // MARSTON5
    String content5 = "Take the first left past the elevators and walk past the cubicles. Head towards the" + '\n' +
      "left most corner, and there will be a small area where the bathrooms are located." + '\n' +
      "If somewhere else, head towards the side of the building that is facing towards" + '\n' +
      "Turlington and the bathrooms will be on the right.";
    marston5 = new Panel("Floor 3 - Marston", content5);

    panels = new Panel[8];
    panels[0] = home;
    panels[1] = marston;
    panels[2] = marston1;
    panels[3] = marston2;
    panels[4] = marston3;
    panels[5] = marston4;
    panels[6] = marston5;
    panels[7] = reitz;
  }

  void display() {
    panels[currentPanel].display();
  }

  void checkPanel() {
    panels[currentPanel].buttonGroup.checkButtons();
  }

  void wasClicked(String name, String id) {
    if (name == "Marston" && id == "MAR") {
      currentPanel = 1;
    }
    else if (name == "1" && id == "M1") {
      currentPanel = 2;
    }
    else if (name == "2" && id == "M2") {
      currentPanel = 3;
    }
    else if (name == "3" && id == "M3") {
      currentPanel = 4;
    }
    else if (name == "4" && id == "M4") {
      currentPanel = 5;
    }
    else if (name == "5" && id == "M5") {
      currentPanel = 6;
    }
    if (name == "Reitz" && id == "REI") {
      currentPanel = 7;
    }
  }
}

