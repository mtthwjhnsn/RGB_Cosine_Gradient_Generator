import controlP5.*;
ControlP5 cp5;

float function; // oscillator1 class

float counter;

float value;
float value2;

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
  //fullScreen(1);


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
  
  //oscillator 1 class
  Osc1 wave1 = new Osc1(2*width/24, height/2-height/12, height/24, 1);
  counter = counter + 0.1;
  wave1.update();
  
  Osc2 wave2 = new Osc2(5*width/24, height/2-height/12, height/24, 10);
  counter = counter + 0.1;
  wave2.update();

  // VECTOR ANNOTATION
  mtthwjhnsn = createFont("Ashbury", 30, true);
  fill(#CFCFD3);
  textFont(mtthwjhnsn);
  textAlign(CENTER, CENTER);
  //text("[" + str(r_a) + ", " + str(r_b) + ", " + str(r_c) + ", " + str(r_d) + "] [" + str(g_a) + ", " + str(g_b) + ", " + str(g_c) + ", " + str(g_d) + "] [" + str(b_a) + ", " + str(b_b) + ", " + str(b_c) + ", " + str(b_d) + "]", width/2, height/2);
}


//void Oscillate1() {
//  float instances = 100;
//  counter = counter + 0.01;
//  cp5.getController("r_d").setValue(sin(counter + (instances/2)*0.1));
//  cp5.getController("g_d").setValue(sin(counter + (instances/2)*0.1));
//  cp5.getController("b_d").setValue(sin(counter + (instances/2)*0.1));
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
  //if (cp5.getController("PRESETS").getValue() == 19) {
  //  xmlChooser = xml_19;
  //}




  //XML[] children = xmlChooser.getChildren("value");

  //XML firstChild = xml.getChild("animal");
  //xml.removeChild(firstChild);
  //xml.setFloat()
  //saveXML(xml, "CUSTOM.xml");
  //    }

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