import controlP5.*; //<>//
ControlP5 cp5;
int sl_height_1;
int sl_height_2;
int sl_height_3;

int sl_width_a;
int sl_width_b;
int sl_width_b2;
int sl_width_c;
int sl_width_d;


float r_a;
float b_a;
float g_a;

float r_b;
float b_b;
float g_b;

float r_c;
float b_c;
float g_c;

float r_d;
float b_d;
float g_d;

float x;

float t;

PFont mtthwjhnsn;


boolean custom;
boolean blue_cyan;
boolean blue_magenta_orange;
boolean blue_white_red;
boolean cyan_magenta;
boolean green_blue_orange;
boolean green_cyan;
boolean green_magenta;
boolean green_red;
boolean magenta_green;
boolean orange_blue;
boolean orange_magenta_blue;
boolean rainbow1;
boolean rainbow2;
boolean rainbow3;
boolean rainbow4;
boolean red_blue;
boolean yellow_green_blue;
boolean yellow_magenta_cyan;
boolean yellow_purple_magenta;

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

//SETUP/////////////////////////////////////////////////////////////////////
//SETUP/////////////////////////////////////////////////////////////////////
//SETUP/////////////////////////////////////////////////////////////////////
//SETUP/////////////////////////////////////////////////////////////////////
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


  custom = true;
  blue_cyan = false;
  blue_magenta_orange = false;
  blue_white_red = false;
  cyan_magenta = false;
  green_blue_orange = false;
  green_cyan = false;
  green_magenta = false;
  green_red = false;
  magenta_green = false;
  orange_blue = false;
  orange_magenta_blue = false;
  rainbow1 = false;
  rainbow2 = false;
  rainbow3 = false;
  rainbow4 = false;
  red_blue = false;
  yellow_green_blue = false;
  yellow_magenta_cyan = false;
  yellow_purple_magenta = false;

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

//UPDATE/////////////////////////////////////////////////////////////////////
//UPDATE/////////////////////////////////////////////////////////////////////
//UPDATE/////////////////////////////////////////////////////////////////////
//UPDATE/////////////////////////////////////////////////////////////////////
//UPDATE/////////////////////////////////////////////////////////////////////



void update () {

  frame.setTitle(str(frameRate));
  
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
//DRAW/////////////////////////////////////////////////////////////////////
//DRAW/////////////////////////////////////////////////////////////////////
//DRAW/////////////////////////////////////////////////////////////////////

void draw () {
  //background(50);
  image(myImg, 0, 0, width, height);
  //fill(#2F3852);
  //rect(0, 0, width, height);  

  updatePreset();
  update();


  // VECTOR ANNOTATION

  mtthwjhnsn = createFont("Ashbury", 30, true);
  fill(#CFCFD3);
  textFont(mtthwjhnsn);
  textAlign(CENTER, CENTER);
  text("[" + str(r_a) + ", " + str(r_b) + ", " + str(r_c) + ", " + str(r_d) + "] [" + str(g_a) + ", " + str(g_b) + ", " + str(g_c) + ", " + str(g_d) + "] [" + str(b_a) + ", " + str(b_b) + ", " + str(b_c) + ", " + str(b_d) + "]", width/2, height/2);
}

//DRAW/////////////////////////////////////////////////////////////////////
//DRAW/////////////////////////////////////////////////////////////////////
//DRAW/////////////////////////////////////////////////////////////////////
//DRAW/////////////////////////////////////////////////////////////////////

void updatePreset () {
  //custom


  if (blue_cyan == true) {

    r_a = 0;
    r_b = 0;
    r_c = 0;
    r_d = 0;

    g_a = 0.5;
    g_b = 0.5;
    g_c = 0.5;
    g_d = 0.5;

    b_a = 0.5;
    b_b = 0.5;
    b_c = 1/3;
    b_d = 1/3;
  } else if (blue_magenta_orange == true) {


    r_a = 0.938; 
    g_a = 0.328;
    b_a = 0.718;

    r_b = 0.659;
    g_b = 0.438;
    b_b = 0.328;

    r_c = 0.388;
    g_c = 0.388;
    b_c = 0.296;

    r_d = 2.538;
    g_d = 2.478;
    b_d = 0.168;
  } else if (blue_white_red == true) {


    r_a = 0.660; 
    g_a = 0.560;
    b_a = 0.680;

    r_b = 0.718;
    g_b = 0.438;
    b_b = 0.720;

    r_c = 0.520;
    g_c = 0.800;
    b_c = 0.520;

    r_d = -0.430;
    g_d = -0.397;
    b_d = -0.083;
  } else if (cyan_magenta == true) {


    r_a = 0.610; 
    g_a = 0.498;
    b_a = 0.650;

    r_b = 0.388;
    g_b = 0.498;
    b_b = 0.350;

    r_c = 0.530;
    g_c = 0.498;
    b_c = 0.620;

    r_d = 3.438;
    g_d = 3.012;
    b_d = 4.025;
  } else if (green_blue_orange == true) {


    r_a = 0.892; 
    g_a = 0.725;
    b_a = 0.000;

    r_b = 0.878;
    g_b = 0.278;
    b_b = 0.725;

    r_c = 0.332;
    g_c = 0.518;
    b_c = 0.545;

    r_d = 2.440;
    g_d = 5.043;
    b_d = 0.732;
  } else if (green_cyan == true) {


    r_a = 0.000; 
    g_a = 0.500;
    b_a = 0.500;

    r_b = 0.000;
    g_b = 0.500;
    b_b = 0.500;

    r_c = 0.000;
    g_c = 0.333;
    b_c = 0.500;

    r_d = 0.000;
    g_d = 0.667;
    b_d = 0.500;
  } else if (green_magenta == true) {


    r_a = 0.667; 
    g_a = 0.500;
    b_a = 0.500;

    r_b = 0.500;
    g_b = 0.667;
    b_b = 0.500;

    r_c = 0.667;
    g_c = 0.666;
    b_c = 0.500;

    r_d = 0.200;
    g_d = 0.000;
    b_d = 0.500;
  } else if (green_red == true) {


    r_a = 0.500; 
    g_a = 0.500;
    b_a = 0.000;

    r_b = 0.500;
    g_b = 0.500;
    b_b = 0.000;

    r_c = 0.500;
    g_c = 0.500;
    b_c = 0.000;

    r_d = 0.500;
    g_d = 0.000;
    b_d = 0.000;
  } else if (magenta_green == true) {


    r_a = 0.590; 
    g_a = 0.811;
    b_a = 0.120;

    r_b = 0.410;
    g_b = 0.392;
    b_b = 0.590;

    r_c = 0.940;
    g_c = 0.548;
    b_c = 0.278;

    r_d = -4.242;
    g_d = -6.611;
    b_d = -4.045;
  } else if (orange_blue == true) {

    r_a = 0.500; 
    g_a = 0.500;
    b_a = 0.500;

    r_b = 0.500;
    g_b = 0.500;
    b_b = 0.500;

    r_c = 0.800;
    g_c = 0.800;
    b_c = 0.500;

    r_d = 0.000;
    g_d = 0.200;
    b_d = 0.500;
  } else if (orange_magenta_blue == true) {


    r_a = 0.821; 
    g_a = 0.328;
    b_a = 0.242;

    r_b = 0.659;
    g_b = 0.481;
    b_b = 0.896;

    r_c = 0.612;
    g_c = 0.340;
    b_c = 0.296;

    r_d = 2.820;
    g_d = 3.026;
    b_d = -0.273;
  } else if (rainbow1 == true) {

    r_a = 0.500; 
    g_a = 0.500;
    b_a = 0.500;

    r_b = 0.500;
    g_b = 0.500;
    b_b = 0.500;

    r_c = 1.000;
    g_c = 1.000;
    b_c = 1.000;

    r_d = 0.000;
    g_d = 0.333;
    b_d = 0.667;
  } else if (rainbow2 == true) {


    r_a = 0.500; 
    g_a = 0.500;
    b_a = 0.500;

    r_b = 0.666;
    g_b = 0.666;
    b_b = 0.666;

    r_c = 1.000;
    g_c = 1.000;
    b_c = 1.000;

    r_d = 0.000;
    g_d = 0.333;
    b_d = 0.667;
  } else if (rainbow3 == true) {

    r_a = 0.500; 
    g_a = 0.500;
    b_a = 0.500;

    r_b = 0.750;
    g_b = 0.750;
    b_b = 0.750;

    r_c = 1.000;
    g_c = 1.000;
    b_c = 1.000;

    r_d = 0.000;
    g_d = 0.333;
    b_d = 0.667;
  } else if (rainbow4 == true) {

    r_a = 0.500; 
    g_a = 0.500;
    b_a = 0.500;

    r_b = 1.000;
    g_b = 1.000;
    b_b = 1.000;

    r_c = 1.000;
    g_c = 1.000;
    b_c = 1.000;

    r_d = 0.000;
    g_d = 0.333;
    b_d = 0.667;
  } else if (red_blue == true) {

    r_a = 0.500; 
    g_a = 0.000;
    b_a = 0.500;

    r_b = 0.500;
    g_b = 0.000;
    b_b = 0.500;

    r_c = 0.500;
    g_c = 0.000;
    b_c = 0.500;

    r_d = 0.000;
    g_d = 0.000;
    b_d = 0.500;
    
  } else if (yellow_green_blue == true) {

    r_a = 0.650; 
    g_a = 0.500;
    b_a = 0.310;

    r_b = -0.650;
    g_b = 0.500;
    b_b = 0.600;

    r_c = 0.333;
    g_c = 0.278;
    b_c = 0.278;

    r_d = 0.660;
    g_d = 0.000;
    b_d = 0.667;
  } else if (yellow_magenta_cyan == true) {

    r_a = 1.000; 
    g_a = 0.500;
    b_a = 0.500;

    r_b = 0.500;
    g_b = 0.500;
    b_b = 0.500;

    r_c = 0.750;
    g_c = 1.000;
    b_c = 0.667;

    r_d = 0.800;
    g_d = 1.000;
    b_d = 0.333;
    
  } else if (yellow_purple_magenta == true) {

    r_a = 0.731; 
    g_a = 1.098;
    b_a = 0.192;

    r_b = 0.358;
    g_b = 1.090;
    b_b = 0.657;

    r_c = 1.077;
    g_c = 0.360;
    b_c = 0.328;

    r_d = 0.965;
    g_d = 2.265;
    b_d = 0.837;
  }  
}
void keyPressed() {
  println("keyPressed: " + key);
}
void keyReleased() {
  println("keyReleased: " + key);
}




//CONTROLP5/////////////////////////////////////////////////////////////////////
//CONTROLP5/////////////////////////////////////////////////////////////////////
//CONTROLP5/////////////////////////////////////////////////////////////////////
//CONTROLP5/////////////////////////////////////////////////////////////////////
//CONTROLP5/////////////////////////////////////////////////////////////////////
//CONTROLP5/////////////////////////////////////////////////////////////////////



void createSliders() {


  sl_height_1 = 0;
  sl_height_2 = height/12;
  sl_height_3 = 2*height/12;

  sl_width_a = 0;
  sl_width_b = width/8;
  sl_width_b2 = width/8;
  sl_width_c = 2 * width/8 ;
  sl_width_d = 3 * width/8;

  //Group buttons = cp5.addGroup("buttons")
  //.setPosition(width/14 * 11, height/2 + height/8)
  //  .setBackgroundHeight(0)
  //    .setWidth(0)
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
    //.setSize(width/6, height/4)
    //.setColorValue(color(255))
    //.setColorForeground(color(255))
    //.setColorBackground(color(255))
    //.setFont(createFont("ashbury", 50))

//    .setFont(createFont(font, font_size))
//    .setGroup(dropDownList);
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


void controlEvent(ControlEvent theEvent) {
  // DropdownList is of type ControlGroup.
  // A controlEvent will be triggered from inside the ControlGroup class.
  // therefore you need to check the originator of the Event with
  // if (theEvent.isGroup())
  // to avoid an error message thrown by controlP5.

  if (theEvent.isGroup()) {
    // check if the Event was triggered from a ControlGroup
    println("event from group : "+theEvent.getGroup().getValue()+" from "+theEvent.getGroup());
  } else if (theEvent.isController()) {
    println("event from controller : "+theEvent.getController().getValue()+" from "+theEvent.getController());

    
    
    if (+theEvent.getController().getValue() == 0 && theEvent.getController().getName() == "PRESETS")
   {custom = true;

      //custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
      
   } else if (+theEvent.getController().getValue() == 1 && theEvent.getController().getName() == "PRESETS") {

     blue_cyan  = true;

      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
      
    } else if (+theEvent.getController().getValue() == 2 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      blue_magenta_orange = true;
      custom = false;
      blue_cyan  = false;
      //blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 3 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      blue_white_red = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      //blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 4 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      cyan_magenta = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      //cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 5 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      green_blue_orange = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      //green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 6 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      green_cyan = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      //green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 7 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      magenta_green = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      //magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 8 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      orange_blue = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      //orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 9 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      orange_magenta_blue = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      //orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 10 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      rainbow1 = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      //rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 11 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      rainbow2 = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      //rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 12 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      rainbow3 = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      //rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 13 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      rainbow4 = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      //rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 14 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      red_blue = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      //red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 15 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      yellow_green_blue = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      //yellow_green_blue = false;
      yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 16 && theEvent.getController().getName() == "PRESETS") {
      // println("custom");
      yellow_magenta_cyan = true;
      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      //yellow_magenta_cyan = false;
      yellow_purple_magenta  = false;
    } else if (+theEvent.getController().getValue() == 17 && theEvent.getController().getName() == "PRESETS") {
      println("ypm");

      yellow_purple_magenta = true;

      custom = false;
      blue_cyan  = false;
      blue_magenta_orange  = false;
      blue_white_red  = false;
      cyan_magenta  = false;
      green_blue_orange = false;
      green_cyan  = false;
      green_magenta = false;
      green_red  = false;
      magenta_green = false;
      orange_blue  = false;
      orange_magenta_blue = false;
      rainbow1 = false;
      rainbow2 = false;
      rainbow3 = false;
      rainbow4  = false;
      red_blue = false;
      yellow_green_blue = false;
      yellow_magenta_cyan = false;
      //yellow_purple_magenta  = false;
    }
    
    
  }

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
    //.setValue(false)
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

public void RED() {
  cp5.getController("r_a").setValue(random(-1,1));
    cp5.getController("r_b").setValue(random(-1,1));
      cp5.getController("r_c").setValue(random(-1,1));
        cp5.getController("r_d").setValue(random(-1,1));
}


public void GREEN() {
  cp5.getController("g_a").setValue(random(-1,1));
    cp5.getController("g_b").setValue(random(-1,1));
      cp5.getController("g_c").setValue(random(-1,1));
        cp5.getController("g_d").setValue(random(-1,1));
}

public void BLUE() {
  cp5.getController("b_a").setValue(random(-1,1));
    cp5.getController("b_b").setValue(random(-1,1));
      cp5.getController("b_c").setValue(random(-1,1));
        cp5.getController("b_d").setValue(random(-1,1));
}

public void A() {
  cp5.getController("r_a").setValue(random(-1,1));
    cp5.getController("g_a").setValue(random(-1,1));
      cp5.getController("b_a").setValue(random(-1,1));
}

public void B() {
  cp5.getController("r_b").setValue(random(-1,1));
    cp5.getController("g_b").setValue(random(-1,1));
      cp5.getController("b_b").setValue(random(-1,1));
}

public void C() {
  cp5.getController("r_c").setValue(random(-1,1));
    cp5.getController("g_c").setValue(random(-1,1));
      cp5.getController("b_c").setValue(random(-1,1));
}

public void D() {
  cp5.getController("r_d").setValue(random(-1,1));
    cp5.getController("g_d").setValue(random(-1,1));
      cp5.getController("b_d").setValue(random(-1,1));
}

public void ALL() {
    
    cp5.getController("r_a").setValue(random(-1,1));
    cp5.getController("r_b").setValue(random(-1,1));
    cp5.getController("r_c").setValue(random(-1,1));
    cp5.getController("r_d").setValue(random(-1,1));
    
    cp5.getController("g_a").setValue(random(-1,1));
    cp5.getController("g_b").setValue(random(-1,1));
    cp5.getController("g_c").setValue(random(-1,1));
    cp5.getController("g_d").setValue(random(-1,1));
    
    cp5.getController("b_a").setValue(random(-1,1));
    cp5.getController("b_b").setValue(random(-1,1));
    cp5.getController("b_c").setValue(random(-1,1));
    cp5.getController("b_d").setValue(random(-1,1));

}