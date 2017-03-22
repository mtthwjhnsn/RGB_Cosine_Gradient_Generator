import controlP5.*; //<>//
ControlP5 cp5;

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

XML xmlChooser;

float  r_a;
float  r_b;
float  r_c;
float  r_d;
float  g_a;
float  g_b;
float  g_c;
float  g_d;
float  b_a;
float  b_b;
float  b_c;
float  b_d;

int sl_height_1;
int sl_height_2;
int sl_height_3;
int sl_width_a;
int sl_width_b;
int sl_width_b2;
int sl_width_c;
int sl_width_d;

float x;
float t;

PFont mtthwjhnsn;

boolean red_rand;
boolean green_rand;
boolean blue_rand;

boolean a_rand;
boolean b_rand;
boolean c_rand;
boolean d_rand;

boolean ALL;

String font = "OratorStd";
int font_size = 30;

PImage myImg;

XML xml;

//SETUP/////////////////////////////////////////////////////////////////////

void setup () {

  //fullScreen(1);
  size (1920, 1080, P2D);
  background(0);

  t = 0;
  x = 0;

  r_a = 0.5;
  r_b = 0.5;
  r_c = 0.25;
  r_d = 0.5;

  g_a = 0.5;
  g_b = 0.5;
  g_c = 0.25;
  g_d = 0.5;

  b_a = 0.5;
  b_b = 0.5;
  b_c = 0.25;
  b_d = 0.5;

  xml_0 = loadXML("blue_cyan.xml");
  xml_1 = loadXML("blue_magenta_orange.xml");
  xml_2 = loadXML("blue_white_red.xml");
  xml_3 = loadXML("cyan_magenta.xml");
  xml_4 = loadXML("green_blue_orange.xml");
  xml_5 = loadXML("green_cyan.xml");
  xml_6 = loadXML("green_magenta.xml");
  xml_7 = loadXML("green_red.xml");
  xml_8 = loadXML("magenta_green.xml");
  xml_9 = loadXML("orange_blue.xml");
  xml_10 = loadXML("orange_magenta_blue.xml");
  xml_11 = loadXML("rainbow1.xml");
  xml_12 = loadXML("rainbow2.xml");
  xml_13 = loadXML("rainbow3.xml");
  xml_14 = loadXML("rainbow4.xml");
  xml_15 = loadXML("red_blue.xml");
  xml_16 = loadXML("yellow_green_blue.xml");
  xml_17 = loadXML("yellow_magenta_cyan.xml");
  xml_18 = loadXML("yellow_purple_magenta.xml");

  red_rand = false;
  green_rand = false;
  blue_rand = false;

  a_rand = false;
  b_rand = false;
  c_rand = false;
  d_rand = false;

  ALL = false;

  myImg = loadImage("vhs2.jpg");

  cp5 = new ControlP5(this);

  createSliders();
  createDropDownList();
  createButtons();
}

//UPDATE////////////////////////////////////////////////////////////////////

void update () {

  surface.setTitle(str(frameRate));
  //t = t + 10;
  x = 0.001;

  for (int i = 0; i < width; i++) {

    float red = (r_a + r_b*cos( 6.28318*(r_c*(i*x)+r_d))) * 255;
    float green = (g_a + g_b*cos( 6.28318*(g_c*(i*x)+g_d))) * 255;
    float blue = (b_a + b_b*cos( 6.28318*(b_c*(i*x)+b_d))) * 255;

    fill(red, green, blue);
    noStroke();
    rect(i, height/12, 1, height/3);
  }
}

//DRAW/////////////////////////////////////////////////////////////////////

void draw () {

  //background(50);
  image(myImg, 0, 0, width, height);
  //fill(#2F3852);
  //rect(0, 0, width, height);  

  //UpdatePreset();
  update();
  //XMLTest();

  // VECTOR ANNOTATION
  mtthwjhnsn = createFont("Ashbury", 30, true);
  fill(#CFCFD3);
  textFont(mtthwjhnsn);
  textAlign(CENTER, CENTER);
  text("[" + str(r_a) + ", " + str(r_b) + ", " + str(r_c) + ", " + str(r_d) + "] [" + str(g_a) + ", " + str(g_b) + ", " + str(g_c) + ", " + str(g_d) + "] [" + str(b_a) + ", " + str(b_b) + ", " + str(b_c) + ", " + str(b_d) + "]", width/2, height/2);
}


//DROPDOWN FUNCTION

public void PRESETS() {

       if (cp5.getController("PRESETS").getValue() == 0) {
      println("ZERO");
      }
      if (cp5.getController("PRESETS").getValue() == 1) {
        xmlChooser = xml_0;
      }
      if (cp5.getController("PRESETS").getValue() == 2) {
        xmlChooser = xml_1;
      }
      if (cp5.getController("PRESETS").getValue() == 3) {
        xmlChooser = xml_2;
      }
      if (cp5.getController("PRESETS").getValue() == 4) {
        xmlChooser = xml_3;
      }
      if (cp5.getController("PRESETS").getValue() == 5) {
        xmlChooser = xml_4;
      }
      if (cp5.getController("PRESETS").getValue() == 6) {
        xmlChooser = xml_5;
      }
      if (cp5.getController("PRESETS").getValue() == 7) {
        xmlChooser = xml_6;
      }
      if (cp5.getController("PRESETS").getValue() == 8) {
        xmlChooser = xml_7;
      }
      if (cp5.getController("PRESETS").getValue() == 9) {
        xmlChooser = xml_8;
      }
      if (cp5.getController("PRESETS").getValue() == 10) {
        xmlChooser = xml_9;
      }
      if (cp5.getController("PRESETS").getValue() == 12) {
        xmlChooser = xml_10;
      }
      if (cp5.getController("PRESETS").getValue() == 13) {
        xmlChooser = xml_11;
      }
      if (cp5.getController("PRESETS").getValue() == 14) {
        xmlChooser = xml_12;
      }
      if (cp5.getController("PRESETS").getValue() == 15) {
        xmlChooser = xml_13;
      }
      if (cp5.getController("PRESETS").getValue() == 16) {
        xmlChooser = xml_14;
      }
      if (cp5.getController("PRESETS").getValue() == 17) {
        xmlChooser = xml_15;
      }
      if (cp5.getController("PRESETS").getValue() == 18) {
        xmlChooser = xml_16;
      }
      if (cp5.getController("PRESETS").getValue() == 19) {
        xmlChooser = xml_17;
      }
            if (cp5.getController("PRESETS").getValue() == 20) {
        xmlChooser = xml_18;
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

//BUTTON FUNCTIONS
public void RED() {
  cp5.getController("r_a").setValue(random(-1, 1));
  cp5.getController("r_b").setValue(random(-1, 1));
  cp5.getController("r_c").setValue(random(-1, 1));
  cp5.getController("r_d").setValue(random(-1, 1));
}


public void GREEN() {
  cp5.getController("g_a").setValue(random(-1, 1));
  cp5.getController("g_b").setValue(random(-1, 1));
  cp5.getController("g_c").setValue(random(-1, 1));
  cp5.getController("g_d").setValue(random(-1, 1));
}

public void BLUE() {
  cp5.getController("b_a").setValue(random(-1, 1));
  cp5.getController("b_b").setValue(random(-1, 1));
  cp5.getController("b_c").setValue(random(-1, 1));
  cp5.getController("b_d").setValue(random(-1, 1));
}

public void A() {
  cp5.getController("r_a").setValue(random(-1, 1));
  cp5.getController("g_a").setValue(random(-1, 1));
  cp5.getController("b_a").setValue(random(-1, 1));
}

public void B() {
  cp5.getController("r_b").setValue(random(-1, 1));
  cp5.getController("g_b").setValue(random(-1, 1));
  cp5.getController("b_b").setValue(random(-1, 1));
}

public void C() {
  cp5.getController("r_c").setValue(random(-1, 1));
  cp5.getController("g_c").setValue(random(-1, 1));
  cp5.getController("b_c").setValue(random(-1, 1));
}

public void D() {
  cp5.getController("r_d").setValue(random(-1, 1));
  cp5.getController("g_d").setValue(random(-1, 1));
  cp5.getController("b_d").setValue(random(-1, 1));
}

public void ALL() {

  cp5.getController("r_a").setValue(random(-1, 1));
  cp5.getController("r_b").setValue(random(-1, 1));
  cp5.getController("r_c").setValue(random(-1, 1));
  cp5.getController("r_d").setValue(random(-1, 1));

  cp5.getController("g_a").setValue(random(-1, 1));
  cp5.getController("g_b").setValue(random(-1, 1));
  cp5.getController("g_c").setValue(random(-1, 1));
  cp5.getController("g_d").setValue(random(-1, 1));

  cp5.getController("b_a").setValue(random(-1, 1));
  cp5.getController("b_b").setValue(random(-1, 1));
  cp5.getController("b_c").setValue(random(-1, 1));
  cp5.getController("b_d").setValue(random(-1, 1));
}


























//GUI
//GUI
//GUI
//GUI
//GUI
//GUI
//GUI
//GUI
//GUI
//GUI
//GUI
//GUI

void createSliders() {

  sl_height_1 = 0;
  sl_height_2 = height/12;
  sl_height_3 = 2*height/12;

  sl_width_a = 0;
  sl_width_b = width/8;
  sl_width_b2 = width/8;
  sl_width_c = 2 * width/8 ;
  sl_width_d = 3 * width/8;

  // Firstly, we create a group that out sliders will bind to. 
  Group sliders = cp5.addGroup("sliders")

    .setPosition(width/4, height/2 + height/8)
    .setBackgroundHeight(0)
    //.setFont(createFont(font, font_size))
    //.setHeight(40)
    .setWidth(0)
    //.setBackgroundColor(color(0))
    ;
  Textlabel SliderLabel;

  SliderLabel = cp5.addTextlabel("sliderLabel")
    .hide()
    //.setText("Background Colours")
    //.setSize(width/4, height/8)
    //.setPosition(0, 5)
    //.setColorValue(0xffffff00)
    //  .setFont(createFont("Georgia", 100))
    .setGroup(sliders);

  // Next we add horizontal sliders, the value of this slider will be linked
  // to variable 'bg_Red' 

  cp5.addSlider("r_a")
    //.setCaptionLabel()
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_1)
    .setRange(-1, 1)
    .setValue(r_a)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(255, 0, 0, 30))
    .setColorValue(color(255))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);

  cp5.addSlider("g_a")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_2)
    .setRange(-1, 1)
    .setValue(g_a)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 255, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("b_a")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_3)
    .setRange(-1, 1)
    .setValue(b_a)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  /////////////11111/////////////
  cp5.addSlider("r_b")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_1)
    .setRange(-1, 1)
    .setValue(r_b)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(255, 0, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("g_b")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_2)
    .setRange(-1, 1)
    .setValue(g_b)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 255, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("b_b")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_3)
    .setRange(-1, 1)
    .setValue(b_b)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;


  ////////////////////////////2222222222/////////////

  cp5.addSlider("r_c")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_1)
    .setRange(-1, 1)
    .setValue(r_c)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(255, 0, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("g_c")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_2)
    .setRange(-1, 1)
    .setValue(g_c)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 255, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("b_c")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_3)
    .setRange(-1, 1)
    .setValue(b_c)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;


  ////////////////////////////33333333333333/////////////

  cp5.addSlider("r_d")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_1)
    .setRange(-1, 1)
    .setValue(r_d)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(255, 0, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("g_d")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_2)
    .setRange(-1, 1)
    .setValue(r_d)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 255, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("b_d")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_3)
    .setRange(-1, 1)
    .setValue(r_d)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);

  cp5.getController("r_a")
    .getCaptionLabel()
    .hide();

  cp5.getController("r_b")
    .getCaptionLabel()
    .hide();

  cp5.getController("r_c")
    .getCaptionLabel()
    .hide();

  cp5.getController("r_d")
    .getCaptionLabel()
    .hide();
  cp5.getController("g_a")
    .getCaptionLabel()
    .hide();

  cp5.getController("g_b")
    .getCaptionLabel()
    .hide();

  cp5.getController("g_c")
    .getCaptionLabel()
    .hide();

  cp5.getController("g_d")
    .getCaptionLabel()
    .hide();

  cp5.getController("b_a")
    .getCaptionLabel()
    .hide();

  cp5.getController("b_b")
    .getCaptionLabel()
    .hide();

  cp5.getController("b_c")
    .getCaptionLabel()
    .hide();

  cp5.getController("b_d")
    .getCaptionLabel()
    .hide();
}

///////////DROPDOWN MENU

//-------------------------------------
void createDropDownList() {

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
  ddl.addItem("CUSTOM", 0);
  ddl.addItem("blue_cyan", 1);
  ddl.addItem("blue_magenta_orange", 2);
  ddl.addItem("blue_white_red", 3);
  ddl.addItem("cyan_magenta", 4);
  ddl.addItem("green_blue_orange", 5);
  ddl.addItem("green_cyan", 6);
  ddl.addItem("magenta_green", 7);
  ddl.addItem("orange_blue", 8);
  ddl.addItem("orange_magenta_blue", 9);
  ddl.addItem("rainbow1", 10);
  ddl.addItem("rainbow2", 11);
  ddl.addItem("rainbow3", 12);
  ddl.addItem("rainbow4", 13);
  ddl.addItem("red_blue", 14);
  ddl.addItem("yellow_green_blue", 15);
  ddl.addItem("yellow_magenta_cyan", 16);
  ddl.addItem("yellow_purple_magenta", 17);
}

void createButtons() {
  // Firstly, we create a group that out buttons will bind to. 
  Group buttons = cp5.addGroup("buttons")
    .setPosition(width/14 * 11, height/2 + height/8)
    .setBackgroundHeight(0)
    .setWidth(0)
    ;

  // Secondly, we will write a label on screen to notify the user what 
  // the sliders control.
  Textlabel ButtonLabel;

  ButtonLabel = cp5.addTextlabel("randomize")
    .setText("randomize")
    .setPosition(0, 0)
    .setSize(width/12, height/12)
    .setColorValue(color(255))
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a toggle switch
  cp5.addButton("RED")
    .setPosition(0, 50)
    .setColorBackground(color(255, 0, 0))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("GREEN")
    .setPosition(100, 50)
    .setColorBackground(color(0, 255, 0))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("BLUE")
    .setPosition(200, 50)
    .setColorBackground(color(0, 0, 255))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("A")
    .setPosition(0, 120)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("B")
    .setPosition(100, 120)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("C")
    .setPosition(200, 120)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("D")
    .setPosition(300, 120)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("ALL")
    .setPosition(0, 190)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)

    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;
}