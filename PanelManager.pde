class PanelManager {
  Panel[] panels;
  int currentPanel;
  // Leads to the corresponding information of the selected button
  Panel home;
  Panel marston, marston1, marston2, marston3, marston4, marston5;
  Panel reitz, reitzB, reitzP, reitzG, reitz1, reitz2, reitz3;

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
    home = new Panel("Bathroom Locator", homeButtons, false, -1);

    // MARSTON
    String[] marstonStrings = {
      "1", "2", "3", "4", "5"
    };
    String[] marID = { 
      "M1", "M2", "M3", "M4", "M5"
    };
    Buttons marstonButtons = new Buttons(marstonStrings, marID);
    marston = new Panel("Marston Floors", marstonButtons, true, 0);

    // REITZ
    String[] reitzStrings = { 
      "Basement", "Plaza", "Ground", "1", "2", "3"
    };
    String[] reiID = { 
      "Rb", "Rp", "Rg", "R1", "R2", "R3"
    };
    Buttons reitzButtons = new Buttons(reitzStrings, reiID);
    reitz = new Panel("Reitz Floors", reitzButtons, true, 0);

    // MARSTON1
    String content1 = "Floor under construction; unaccessable to the public.";
    marston1 = new Panel("Floor 1 - Marston", content1, true, 1, 0);

    // MARSTON2
    String content2 = "Find the study rooms and enter the hallway between the study" + '\n' + 
      "rooms and front desk. Go all the way to the end of the hallway and" + '\n' + 
      "the bathrooms will be on your right.";
    marston2 = new Panel("Floor 2 - Marston", content2, true, 1, 2);

    // MARSTON3
    String content3 = "Take the first left past the elevator and bookshelves.  The bathroom " + '\n' +
      "will be in the corner at the end of the rows of tables.  If somewhere " + '\n' +
      "else, head towards the side of the building that is facing towards " + '\n' +
      "Turlington and the bathrooms will be on the right.";
    marston3 = new Panel("Floor 3 - Marston", content3, true, 1, 2);

    // MARSTON4
    String content4 = "Take the first left past the elevators and walk past the bookshelves " + '\n' +
      "until you reach the cubicles.  The bathroom will be located on the " + '\n' +
      "right side (with the bookshelves behind you).  If somewhere else, " + '\n' +
      "head towards the side of the building that is facing towards " + '\n' +
      "Turlington and the bathrooms will be on the right.";
    marston4 = new Panel("Floor 4 - Marston", content4, true, 1, 2);

    // MARSTON5
    String content5 = "Take the first left past the elevators and walk past the cubicles. " + '\n' +
      "Head towards the left most corner, and there will be a small area " + '\n' +
      "where the bathrooms are located. If somewhere else, head towards" + '\n' +
      "the side of the building that is facing towards Turlington and the" + '\n' +
      "bathrooms will be on the right.";
    marston5 = new Panel("Floor 5 - Marston", content5, true, 1, 2);

    // REITZ BASEMENT
    String content6 = "Floor under construction; unaccessable to the public.";
    reitzB = new Panel("Basement - Reitz", content6, true, 7, 0);

    // REITZ PLAZA
    String content7 = "Women's restroom is found down the hall, and next to the Welcome" + '\n' +
      "Center's entrance." + '\n' + "Men's bathroom is found next to the TV and pamphlets, near the" + '\n' +
      "parking garage entrance.";
    reitzP = new Panel("Plaza - Reitz", content7, true, 7, 2);

    // RETIZ GROUND
    String content8 = "Head towards the stairs and the women's and men's bathrooms will " + '\n' +
      "be located next to the Kaplan center and game room, respectively.";
    reitzG = new Panel("Ground Floor - Reitz", content8, true, 7, 3);

    // REITZ1
    String content9 = "The walking from the stairs, the women's bathroom should be found " + '\n' +
      "immediately to the right, next to the Wayne Reitz picture and" + '\n' +
      "dedication." + '\n' + "The men's restroom can be found by heading towards the right of  " + '\n' +
      "the women's restroom and taking a left as if going to Panda Express." + '\n' +
      "The bathroom will be on the left wall before entering the food court.";
    reitz1 = new Panel("Floor 1 - Reitz", content9, true, 7, 3);

    // RETIZ2
    String content10 = "The women's rest room is found closer towards the Rion Ballroom " + '\n' +
      "right before the William E. Rion dedication." + '\n' +
      "Men's restroom can be found to the right of the Gator Nights  " + '\n' + 
      "Display, and next to the elevators." + '\n' +
      "The family restroom is right next to the Women's restroom.";
    reitz2 = new Panel("Floor 2 - Reitz", content10, true, 7, 3);

    // REITZ3
    String content11 = "Floor under construction; unaccessable to the public.";
    reitz3 = new Panel("Floor 3 - Reitz", content11, true, 7, 0);

    panels = new Panel[14];
    panels[0] = home;
    panels[1] = marston;
    panels[2] = marston1;
    panels[3] = marston2;
    panels[4] = marston3;
    panels[5] = marston4;
    panels[6] = marston5;
    panels[7] = reitz;
    panels[8] = reitzB;
    panels[9] = reitzP;
    panels[10] = reitzG;
    panels[11] = reitz1;
    panels[12] = reitz2;
    panels[13] = reitz3;
  }

  void display() {
    panels[currentPanel].display();
  }

  void checkPanel() {
    if (panels[currentPanel].buttonGroup != null) {
      panels[currentPanel].buttonGroup.checkButtons();
      println("Checking buttons");
      println(currentPanel);
    }
    if (panels[currentPanel].back != null) {
      panels[currentPanel].back.checkClick();
      println("Checking back button");
      println(currentPanel);
    }
  }

  void wasClicked(String name, String id) {
    if (name.equals("Marston") && id.equals("MAR")) {
      currentPanel = 1;
    }
    else if (name.equals("1") && id.equals("M1")) {
      currentPanel = 2;
    }
    else if (name.equals("2") && id.equals("M2")) {
      currentPanel = 3;
    }
    else if (name.equals("3") && id.equals("M3")) {
      currentPanel = 4;
    }
    else if (name.equals("4") && id.equals("M4")) {
      currentPanel = 5;
    }
    else if (name.equals("5") && id.equals("M5")) {
      currentPanel = 6;
    }
    if (name.equals("Reitz") && id.equals("REI")) {
      currentPanel = 7;
    }
    else if (name.equals("Basement") && id.equals("Rb")) {
      currentPanel = 8;
    }
    else if (name.equals("Plaza") && id.equals("Rp")) {
      currentPanel = 9;
    }
    else if (name.equals("Ground") && id.equals("Rg")) {
      currentPanel = 10;
    }
    else if (name.equals("1") && id.equals("R1")) {
      currentPanel = 11;
    }
    else if (name.equals("2") && id.equals("R2")) {
      currentPanel = 12;
    }
    else if (name.equals("3") && id.equals("R3")) {
      currentPanel = 13;
    }
  }
}
