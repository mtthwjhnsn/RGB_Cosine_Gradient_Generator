void createDropDownList() {

   int font_size = 30;
  
  // Firstly, we create a group that out drop down list will bind to. 
  Group dropDownList = cp5.addGroup("OPTIONS")
    //.setColorValue(color(255))
    .setPosition(100, height/2 + height/8)
    .setBackgroundHeight(height/4)
    .setWidth(0)
    //.setHeight(40)
    //.setFont(createFont(font, font_size))
    ;

  // Secondly, we will write a label on screen to notify the user what 
  // the dropdownlist control.
  Textlabel DropDownLabel;

  DropDownLabel = cp5.addTextlabel("dropDownLabel")
    .setText("PRESETS")
    .setPosition(0, 0)
    .setHeight(40)
    .hide()
    ;

  // Now we create our drop down list 
  DropdownList ddl;
  // First, configure how we want it to be displayed
  ddl = cp5.addDropdownList("PRESETS")
    .setPosition(0, 80)
    .setSize(width/6, height/6)
    .setItemHeight(40)
    .setColorValue(color(255))
    .setOpen(false)
    .setFont(createFont(font, font_size))
    .setGroup(dropDownList);

  cp5.getController("PRESETS")
    .getCaptionLabel().toUpperCase(false)
    ;


  // Here we add our elements to the drop down list
  ddl.addItem("blue_cyan", 0);
  ddl.addItem("blue_magenta_orange", 1);
  ddl.addItem("blue_white_red", 2);
  ddl.addItem("cyan_magenta", 3);
  ddl.addItem("green_blue_orange", 4);
  ddl.addItem("green_cyan", 5);
  ddl.addItem("green_magenta", 6);
  ddl.addItem("green_red", 7);
  ddl.addItem("magenta_green", 8);
  ddl.addItem("orange_blue", 9);
  ddl.addItem("orange_magenta_blue", 10);
  ddl.addItem("rainbow1", 11);
  ddl.addItem("rainbow2", 12);
  ddl.addItem("rainbow3", 13);
  ddl.addItem("rainbow4", 14);
  ddl.addItem("red_blue", 15);
  ddl.addItem("yellow_green_blue", 16);
  ddl.addItem("yellow_magenta_cyan", 17);
  ddl.addItem("yellow_purple_magenta", 18);
  ddl.addItem("custom1", 19);
  ddl.addItem("custom2", 20);
  ddl.addItem("custom3", 21);

}