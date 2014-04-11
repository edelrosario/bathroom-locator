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
    /*String content1 = "Walk towards the bookshelves behind study tables, and take a left." + '\n' +
      "You will walk all the way down the pathway between two rows of bookshelves, " + '\n' +
      "and the bathrooms will be located on your right."; */
    String content1 = "Floor under constructionl; unaccessable to the public.";
    marston1 = new Panel("Floor 1 - Marston", content1, true, 1);

    // MARSTON2
    String content2 = "Find the study rooms and enter the hallway between the study rooms and front" + '\n' + 
      "desk. Go all the way to the end of the hallway and the bathrooms will be on your" + '\n' + 
      "right";
    marston2 = new Panel("Floor 2 - Marston", content2, true, 1);

    // MARSTON3
    String content3 = "Take the first left past the elevator and bookshelves.  The bathroom will be in" + '\n' +
      "the corner at the end of the rows of tables.  If somewhere else, head towards the" + '\n' +
      "side of the building that is facing towards Turlington and the bathrooms will be" + '\n' +
      "on the right.";
    marston3 = new Panel("Floor 3 - Marston", content3, true, 1);

    // MARSTON4
    String content4 = "Take the first left past the elevators and walk past the bookshelves until you reach" + '\n' +
      "the cubicles.  The bathroom will be located on the right side (with the bookshelves" + '\n' +
      "behind you).  If somewhere else, head towards the side of the building that is " + '\n' +
      "facing towards Turlington and the bathrooms will be on the right.";
    marston4 = new Panel("Floor 4 - Marston", content4, true, 1);

    // MARSTON5
    String content5 = "Take the first left past the elevators and walk past the cubicles. Head towards the" + '\n' +
      "left most corner, and there will be a small area where the bathrooms are located." + '\n' +
      "If somewhere else, head towards the side of the building that is facing towards" + '\n' +
      "Turlington and the bathrooms will be on the right.";
    marston5 = new Panel("Floor 5 - Marston", content5, true, 1);
    
    // REITZ BASEMENT
    String content6 = "Walk into the hallway between the elevators and outside exit and take a left.  Walk" + '\n' +
      "a little down that hallway and you should come across a small study area with" + '\n' +
      "offices and a bathroom.  The women's will be on the right and the men's on the" + '\n' + 
      "left.";
    reitzB = new Panel("Basement - Reitz", content6, true, 7);
    
    // REITZ PLAZA
    String content7 = "Women's restroom is found down the hall, and next to the Welcome Center's" + '\n' +
      "entrance." + '\n' + "Men's bathroom is found next to the TV and pamphlets, near the parking garage" + '\n' +
      "entrance.";
    reitzP = new Panel("Plaza - Reitz", content7, true, 7);
    
    // RETIZ GROUND
    String content8 = "Head towards the stairs and the women's and men's bathrooms will be located" + '\n' +
      "next to the Kaplan center and game room, respectively.";
    reitzG = new Panel("Ground Floor - Reitz", content8, true, 7);
    
    // REITZ1
    String content9 = "The walking from the stairs, the women's bathroom should be found immediately" + '\n' +
      "to the right, next to the Wayne Reitz picture and dedication." + '\n' +
      "The men's restroom can be found by heading towards the right of the women's " + '\n' +
      "restroom and taking a left as if going to Panda.  The bathroom will be on the left" + '\n' +
      "wall before entering the food court.";
    reitz1 = new Panel("Floor 1 - Reitz", content9, true, 7);
    
    // RETIZ2
    String content10 = "The women's rest room is found closer towards the Rion Ballroom right before the" + '\n' +
      "William E. Rion dedication." + '\n' +
      "Men's restroom can be found to the right of the Gator Nights Display, and next" +
      '\n' + "to the elevators." + '\n' +
      "The family restroom is right next to the Women's restroom.";
    reitz2 = new Panel("Floor 2 - Reitz", content10, true, 7);
    
    // REITZ3
    String content11 = "From the elevators, for the room directory and take a right for the men's restroom" + '\n' +
      "and a left for the women's restroom.  The restrooms will be found directly after" + '\n' +
      "the water fountains.";
    reitz3 = new Panel("Floor 3 - Reitz", content11, true, 7);


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
      println("Clicked marston");
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

