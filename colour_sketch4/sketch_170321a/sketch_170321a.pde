//int b_a;
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

void setup () {

  xml_0 = loadXML("blue_cyan.xml");
  xml_1 = loadXML("blue_magenta_orange.xml");
  xml_2 = loadXML("blue_white_red.xml");
  xml_3 = loadXML("cyan_magenta.xml");
  xml_4= loadXML("green_blue_orange.xml");
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
  
}


void draw () {
  updateParameters();
  println("[" + str(r_a) + ", " + str(r_b) + ", " + str(r_c) + ", " + str(r_d) + "]" + "[" + str(g_a) + ", " + str(g_b) + ", " + str(g_c) + ", " + str(g_d) + "]" + "[" + str(b_a) + ", " + str(b_b) + ", " + str(b_c) + ", " + str(b_d) + "]");
  //String id;
}

void updateParameters () {


  XML[] children = xml.getChildren("value");

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

  println("[" + str(r_a) + ", " + str(r_b) + ", " + str(r_c) + ", " + str(r_d) + "]" + "[" + str(g_a) + ", " + str(g_b) + ", " + str(g_c) + ", " + str(g_d) + "]" + "[" + str(b_a) + ", " + str(b_b) + ", " + str(b_c) + ", " + str(b_d) + "]");
  //String id;



  //value = children[i].getFloatContent();

  //for (int i = 0; i < children.length; i++) {
  //String id = children[i].getString("id");
  //float value = children[i].getFloatContent();



  //println(id + "=" + value);
  //}
}