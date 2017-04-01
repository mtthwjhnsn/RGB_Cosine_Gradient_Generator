XML xml_0;
XML xml_1;
XML xml_2;
XML xml_3;
XML xml_4;
XML xml_5;
XML xml_6;
XML xml_7;
XML xml_8;
XML xml_9;
XML xml_10;
XML xml_11;
XML xml_12;
XML xml_13;
XML xml_14;
XML xml_15;
XML xml_16;
XML xml_17;
XML xml_18;
XML xml_19;
XML xml_20;
XML xml_21;
XML xml_22;

XML xmlChooser;

void createDropDownList() {

  int font_size = 18;

  // Firstly, we create a group that out drop down list will bind to. 
  Group dropDownList = cp5.addGroup("OPTIONS")
    .setColorValue(color(255))
    .setPosition(100, height/2 + height/8)
    .setBackgroundHeight(height/4)
    .setWidth(0)
    .setHeight(40)
    .setFont(createFont(font, font_size))
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



// Sketch saves the following to a file called "subset.xml":
// <?xml version="1.0"?>
// <mammals>
//   <animal id="1" species="Panthera pardus">Leopard</animal>
//   <animal id="2" species="Equus zebra">Zebra</animal>
// </mammals>
//}


///////////////////
public void PRESETS() {

  if (cp5.getController("PRESETS").getValue() == 0) {
    xmlChooser = xml_0;
  }
  if (cp5.getController("PRESETS").getValue() == 1) {
    xmlChooser = xml_1;
  }
  if (cp5.getController("PRESETS").getValue() == 2) {
    xmlChooser = xml_2;
  }
  if (cp5.getController("PRESETS").getValue() == 3) {
    xmlChooser = xml_3;
  }
  if (cp5.getController("PRESETS").getValue() == 4) {
    xmlChooser = xml_4;
  }
  if (cp5.getController("PRESETS").getValue() == 5) {
    xmlChooser = xml_5;
  }
  if (cp5.getController("PRESETS").getValue() == 6) {
    xmlChooser = xml_6;
  }
  if (cp5.getController("PRESETS").getValue() == 7) {
    xmlChooser = xml_7;
  }
  if (cp5.getController("PRESETS").getValue() == 8) {
    xmlChooser = xml_8;
  }
  if (cp5.getController("PRESETS").getValue() == 9) {
    xmlChooser = xml_9;
  }
  if (cp5.getController("PRESETS").getValue() == 10) {
    xmlChooser = xml_10;
  }
  if (cp5.getController("PRESETS").getValue() == 11) {
    xmlChooser = xml_11;
  }
  if (cp5.getController("PRESETS").getValue() == 12) {
    xmlChooser = xml_12;
  }
  if (cp5.getController("PRESETS").getValue() == 13) {
    xmlChooser = xml_13;
  }
  if (cp5.getController("PRESETS").getValue() == 14) {
    xmlChooser = xml_14;
  }
  if (cp5.getController("PRESETS").getValue() == 15) {
    xmlChooser = xml_15;
  }
  if (cp5.getController("PRESETS").getValue() == 16) {
    xmlChooser = xml_16;
  }
  if (cp5.getController("PRESETS").getValue() == 17) {
    xmlChooser = xml_17;
  }
  if (cp5.getController("PRESETS").getValue() == 18) {
    xmlChooser = xml_18;
  }
    if (cp5.getController("PRESETS").getValue() == 19) {
    xmlChooser = xml_19;
  }
    if (cp5.getController("PRESETS").getValue() == 20) {
    xmlChooser = xml_20;
  }
    if (cp5.getController("PRESETS").getValue() == 21) {
    xmlChooser = xml_21;
  }
    if (cp5.getController("PRESETS").getValue() == 22) {
    xmlChooser = xml_22;
  }

  XML[] children = xmlChooser.getChildren("value");

  r_a = children[0].getFloatContent();
  r_b = children[1].getFloatContent();
  r_c = children[2].getFloatContent();
  r_d = children[3].getFloatContent();
  g_a = children[4].getFloatContent();
  g_b = children[5].getFloatContent();
  g_c = children[6].getFloatContent();
  g_d = children[7].getFloatContent();
  b_a = children[8].getFloatContent();
  b_b = children[9].getFloatContent();
  b_c = children[10].getFloatContent();
  b_d = children[11].getFloatContent();
}