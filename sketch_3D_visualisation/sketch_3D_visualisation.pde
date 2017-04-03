import controlP5.*;
ControlP5 cp5;

ArrayList<SinWave> sins = new ArrayList<SinWave>();

float function; // oscillator1 class

float counter;

int _sin, _saw;

boolean  change_a, change_b, change_c, change_d, change_sin, change_saw, change_r;

int _a, _b, _c, _d, _r, reset_a, reset_b, reset_c, reset_d;

float value, value1, value2, value3;

float  r_a, r_b, r_c, r_d, g_a, g_b, g_c, g_d, b_a, b_b, b_c, b_d;

float x;

PFont mtthwjhnsn;

String font = "HelveticaNeueLTPro-Lt-48";

PImage myImg;

XML xml;

float box_dimension;
void setup() {
  
  //size(1920, 1080, P3D);
  fullScreen(P3D);
  background(0);

  cp5 = new ControlP5(this);

  counter = 0;
  
  _sin = 0;
  _saw = 0;
  _a = 0;
  _b = 0;
  _c = 0;
  _d = 0;
  _r = 0;
  
  x = 0; 

  r_a = 0.5; 
  r_b = 0.5; 
  r_c = 4; 
  r_d = 0.5;

  g_a = 0.5; 
  g_b = 0.5; 
  g_c = 4; 
  g_d = 0.5;

  b_a = 0.5; 
  b_b = 0.5; 
  b_c = 4; 
  b_d = 0.5;
  
  myImg = loadImage("avatar.png");
  
  box_dimension = height*.6;
  
  //createSliders();
  //createDropDownList();
  //createButtons();
  //createKnobs();
  
}


void update () {

  surface.setTitle(str(frameRate));
  //t = t + 10;
  x = 0.001;

  for (int i = 0; i < height*.6; i++) {

    float red = (r_a + r_b*cos( 6.28318*(r_c*(i*x)+r_d))) * 255;
    float green = (g_a + g_b*cos( 6.28318*(g_c*(i*x)+g_d))) * 255;
    float blue = (b_a + b_b*cos( 6.28318*(b_c*(i*x)+b_d))) * 255;

    fill(red, green, blue);
    noStroke();
    rectMode(CENTER);
    rect(width/2+i, height/4, 1, box_dimension*.25);
  }
}

void draw() {
 
  background(5);
   
  camera(mouseX, mouseY, (height/2) / tan(PI/6), mouseX, height/2, 0, 0, 1, 0);
  sinABCD();
 
 textSize(48);
 text("AUDIO-VISUAL RELATIONSHIPS", width/12, height/2);
 //pushMatrix();
 //translate(0, 0, box_dimension*.5);
 //image(myImg, width/2, width/5, width*.08, height*.30);
 // popMatrix();
    
  //box
  pushMatrix();
  translate(width/2, height/2, 0);
  stroke(255);
  noFill();
  box(box_dimension);
  popMatrix();
  //rectMode(CENTER);

  //left rect
  pushMatrix();
  translate(width/2, height/2, 0);
  rotateY(radians(270));
            pushMatrix();
            translate(-2*box_dimension, -box_dimension*.5, box_dimension*.5);
            update();
            popMatrix();
  popMatrix();

  //right rect
  pushMatrix();
  translate(width/2, height/2, 0);
  rotateY(radians(90));
            pushMatrix();
            translate(-2*box_dimension + 10, -box_dimension*.5, height*.6*.5);
            update();
            popMatrix();
  popMatrix();
  
  //backrect
  pushMatrix();
  translate(width/2, height/2, -box_dimension);
  //rotateY(radians(0));
            pushMatrix();
            translate(-2*box_dimension+10, -box_dimension*.5, box_dimension*.5);
            update();
            popMatrix();
  popMatrix();
  
}

void keyfunction () {
if (keyPressed == true) {
  if (key == 'a') {
  _a = _a + 1;
}
}
if (keyPressed == true) {
    if (key == 'b') {
  _b = _b + 1;
  }
}
if (keyPressed == true) {
    if (key == 'c') {
  _c = _c + 1;
  }
}
if (keyPressed == true) {
    if (key == 'd') {
  _d = _d + 1;
  }
}
if (keyPressed == true) {
    if (key == 's') {
_sin = _sin + 1;
  }
}
if (keyPressed == true) {
      if (key == 'r') {
_r = _r + 1;
  }
}
}