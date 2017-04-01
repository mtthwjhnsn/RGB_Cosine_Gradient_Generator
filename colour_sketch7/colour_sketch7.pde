import controlP5.*;
ControlP5 cp5;

ArrayList<SinWave> sins = new ArrayList<SinWave>();

float function; // oscillator1 class

float counter;

boolean toggle, toggle2;

boolean  change_a, change_b, change_c, change_d;

int _a, _b, _c, _d, reset_a, reset_b, reset_c, reset_d;

float value, value1, value2, value3;

float  r_a, r_b, r_c, r_d, g_a, g_b, g_c, g_d, b_a, b_b, b_c, b_d;

float x;

PFont mtthwjhnsn;

String font = "HelveticaNeueLTPro-Lt-48";

PImage myImg;

XML xml;


//SETUP/////////////////////////////////////////////////////////////////////

void setup () {

  size (1920, 1080, P2D);
  background(0);

  cp5 = new ControlP5(this);

  counter = 0;
  toggle = false;
  toggle2 = false;

  _a = 0;
  _b = 0;
  _c = 0;
  _d = 0;

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

  myImg = loadImage("vhs2.jpg");

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
  image(myImg, 0, 0, width, height);
  update();

  if (toggle == true) {
    SIN_ON();
    toggle2 = false;
  } else if (toggle2 == true) {
    SAW_ON();
    toggle = false;
  }

  // VECTOR ANNOTATION
  mtthwjhnsn = createFont("Ashbury", 30, true);
  fill(#CFCFD3);
  textFont(mtthwjhnsn);
  textAlign(CENTER, CENTER);
  //text("[" + str(r_a) + ", " + str(r_b) + ", " + str(r_c) + ", " + str(r_d) + "] [" + str(g_a) + ", " + str(g_b) + ", " + str(g_c) + ", " + str(g_d) + "] [" + str(b_a) + ", " + str(b_b) + ", " + str(b_c) + ", " + str(b_d) + "]", width/2, height/2);
}

//void mousePressed() {
//  if (toggle == true) {
//    sins.add(new SinWave(2*width/24, height/2, height/24, 1));
//  } else {
//    sins.clear();
//  }
//}