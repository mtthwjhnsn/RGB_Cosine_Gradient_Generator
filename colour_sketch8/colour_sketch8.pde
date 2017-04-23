import controlP5.*;
ControlP5 cp5;

PShader passThroughShader;
PShader shaderColor;
PShader shaderTexture;
PGraphics passThroughFBO;
PGraphics shaderColorFBO;
PGraphics shaderTextureFBO;

//ArrayList<SinWave> sins = new ArrayList<SinWave>();

float function; // oscillator1 class

float counter;

int _sin, _saw;

boolean  change_a, change_b, change_c, change_d, change_sin, change_saw;

int _a, _b, _c, _d, reset_a, reset_b, reset_c, reset_d;

float value, value1, value2, value3;

float  r_a, r_b, r_c, r_d, g_a, g_b, g_c, g_d, b_a, b_b, b_c, b_d;

int bands, amp_lfo_type, freq_lfo_type, phase_lfo_type;

float speed, amp_lfo_speed, freq_lfo_speed, phase_lfo_speed, amp_lfo_amp, freq_lfo_amp, phase_lfo_amp, amp_cycle_speed, freq_cycle_speed, phase_cycle_speed;
float x;

PFont mtthwjhnsn;

String font = "HelveticaNeueLTPro-Lt-48";

PImage myImg;

XML xml;

int shaderWidth, shaderHeight; 


//SETUP/////////////////////////////////////////////////////////////////////

void setup () {

  //fullScreen();
  size (1920, 1080, P2D);
  background(0);

  cp5 = new ControlP5(this);
  
  shaderWidth = width;
  shaderHeight = height;
    
  passThroughShader = loadShader("passThrough.glsl"); // Load our .glsl shader from the /data folder
  passThroughShader.set("iResolution", float(shaderWidth), float(shaderHeight), 0); // Pass in our xy resolution to iResolution uniform variable in our shader
  passThroughFBO = createGraphics(shaderWidth, shaderHeight, P2D);
  passThroughFBO.shader(passThroughShader);
  
  shaderColor = loadShader("colourPanels.glsl"); // Load our .glsl shader from the /data folder
  shaderColor.set("iResolution", float(shaderWidth), float(shaderHeight), 0); // Pass in our xy resolution to iResolution uniform variable in our shader
  shaderColorFBO = createGraphics(shaderWidth, shaderHeight, P2D); 
  shaderColorFBO.shader(shaderColor);
  
  shaderTexture = loadShader("colourPanelsTex.glsl"); // Load our .glsl shader from the /data folder
  shaderTexture.set("iResolution", float(shaderWidth), float(shaderHeight), 0); // Pass in our xy resolution to iResolution uniform variable in our shader
  shaderTextureFBO = createGraphics(shaderWidth, shaderHeight, P2D); 
  shaderTextureFBO.shader(shaderTexture);
  
  counter = 0;

  _sin = 0;
  _saw = 0;
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
  
  amp_lfo_speed = 0.92;

  myImg = loadImage("vhs2.jpg");

  createSliders();
  createDropDownList();
  createButtons();
  //createKnobs();
}

//UPDATE////////////////////////////////////////////////////////////////////
void updateShaders() {
  
  shaderColor.set("iGlobalTime", millis() / 1000.0); // pass in a millisecond clock to enable animation 
  shaderColor.set("dc", r_a, g_a, b_a); // dc
  shaderColor.set("amp", r_b, g_b, b_b); // amplitude
  shaderColor.set("freq", r_c, g_c, b_c); // frequency
  shaderColor.set("phase", r_d, g_d, b_d); // phase
  shaderColor.set("num_bands", float(bands)); // number of bands
  shaderColor.set("animate_speed", speed); // speed

  shaderColor.set("amp_lfo_type", amp_lfo_type); // phase
  shaderColor.set("freq_lfo_type", freq_lfo_type); // number of bands
  shaderColor.set("phase_lfo_type", phase_lfo_type); // speed
  
  shaderColor.set("amp_lfo_speed", amp_lfo_speed); // phase
  shaderColor.set("freq_lfo_speed", freq_lfo_speed); // number of bands
  shaderColor.set("phase_lfo_speed", phase_lfo_speed); // speed
  
  shaderColor.set("amp_lfo_amp", amp_lfo_amp); // phase
  shaderColor.set("freq_lfo_amp", freq_lfo_amp); // number of bands
  shaderColor.set("phase_lfo_amp", phase_lfo_amp); // speed
  
  shaderColor.set("amp_cycle_speed", amp_cycle_speed); // phase
  shaderColor.set("freq_cycle_speed", freq_cycle_speed); // number of bands
  shaderColor.set("phase_cycle_speed", phase_cycle_speed); // speed
  
  //shader(shaderColor); 
  //rect(0, 0, width, height); // We draw a rect here for our shader to draw onto
}

//void update () {

//  surface.setTitle(str(frameRate));
//  //t = t + 10;
//  x = 0.001;

//  for (int i = 0; i < width; i++) {

//    float red = (r_a + r_b*cos( 6.28318*(r_c*(i*x)+r_d))) * 255;
//    float green = (g_a + g_b*cos( 6.28318*(g_c*(i*x)+g_d))) * 255;
//    float blue = (b_a + b_b*cos( 6.28318*(b_c*(i*x)+b_d))) * 255;

//    fill(red, green, blue);
//    noStroke();
//    rect(i, height/12, 1, height/3);
//  }
//}

//DRAW/////////////////////////////////////////////////////////////////////

void draw () {
  background(50);
  surface.setTitle(str(frameRate));
  //pushMatrix();
  //image(myImg, 0, 0, width, height);
  //sinABCD();
  updateShaders();
  
  //passThroughFBO.beginDraw();
  //passThroughShader.set("iGlobalTime", millis() / 1000.0); // pass in a millisecond clock to enable animation 
  //passThroughShader.set("tex", myImg);
  //shader(passThroughShader); 
  //passThroughFBO.rect(0, 0, shaderWidth, shaderHeight); // We draw a rect here for our shader to draw onto
  //passThroughFBO.endDraw();
  
  shaderTextureFBO.beginDraw();
  shaderTexture.set("iGlobalTime", millis() / 1000.0); // pass in a millisecond clock to enable animation 
  //shaderTexture.set("tex", myImg);
  shader(shaderTexture); 
  shaderTextureFBO.rect(0, 0, shaderWidth, shaderHeight); // We draw a rect here for our shader to draw onto
  shaderTextureFBO.endDraw();
  
  shaderColorFBO.beginDraw();
  shaderColor.set("iGlobalTime", millis() / 1000.0); // pass in a millisecond clock to enable animation 
  shaderColor.set("tex", shaderTextureFBO);
  shader(shaderColor); 
  shaderColorFBO.rect(0, 0, shaderWidth, shaderHeight); // We draw a rect here for our shader to draw onto
  shaderColorFBO.endDraw();

  image(shaderColorFBO, 0, 0, shaderWidth, shaderHeight);
  
  //image(myImg, 0, 0, width, height);
  
  // VECTOR ANNOTATION
  mtthwjhnsn = createFont("Ashbury", 30, true);
  fill(#CFCFD3);
  textFont(mtthwjhnsn);
  textAlign(CENTER, CENTER);
  //text("[" + str(r_a) + ", " + str(r_b) + ", " + str(r_c) + ", " + str(r_d) + "] [" + str(g_a) + ", " + str(g_b) + ", " + str(g_c) + ", " + str(g_d) + "] [" + str(b_a) + ", " + str(b_b) + ", " + str(b_c) + ", " + str(b_d) + "]", width/2, height/2);
}