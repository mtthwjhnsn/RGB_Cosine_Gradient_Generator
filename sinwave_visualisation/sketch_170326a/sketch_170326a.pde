float counter;
float counter2;
float counter3;
float value;
float value2;
float reset;
boolean top;
   
void setup () {

  
  size (1820, 1080, P2D);
  //fullScreen();
  background(0);
  counter = 0;
  value = 0;
  value2 = 0;
  reset = 0;
}


void draw () {
  surface.setTitle(str(frameRate));
  background(255);
  oscillator1();
  oscillator2();
  //oscillator3();
}

// oscillator visualisation