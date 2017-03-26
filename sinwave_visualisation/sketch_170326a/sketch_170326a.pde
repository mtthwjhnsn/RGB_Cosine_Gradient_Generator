float counter;
void setup () {


  size (960, 540, P2D);
  //fullScreen();
  background(0);
  counter = 0;
}


void draw () {

  background(0);
  oscillator1();
}

// oscillator visualisation

void oscillator1() {
  counter = counter + 0.1;
  
  //variables of sin wave
  
  
  

  float h = 50; // amp
  float t = 0; // translation left right
  
  float speed = 1;
  float wavelength = h/10;
  
  float x = width/4 + wavelength - h; // xpositiion centred
  float y = height/2; //y position
  
  float instances = 20;
  float i = instances/2; //instance
  float offset = .25;

  float function = h * sin(speed * counter - (offset*(i) - t));
  
  //resolution = map(resolution, 0, resolution, 0, 10);

  for (i = 0; i<instances; i++) {
    float _function = h * sin(speed * counter - (offset*(i) - t));
    float _function2 = h * sin(speed * counter - ((offset*(i-1)) - t));

    //rect(x+(instances*i), _function2, 10, 10);
    stroke(255);
    line(x+(wavelength*i), y+_function, x+(wavelength*(i-1)), y+_function2);
  }

  //ellipse(x+wavelength/2*i, y, 2*h, 2*h);
  rectMode(CENTER);
  rect(x+wavelength/2*i-wavelength, y, 2*h, 2*h);
  noFill();
  stroke(255, 0, 0);
  strokeWeight(1);
  ellipse(x+wavelength/2*i-wavelength, y+function, 20, 20);
  
  //line(width/4, 0, width/4, height);
  //line(0, height/2, width, height/2);
}