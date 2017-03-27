
//float counter;

class Osc2 {

  int h;
  float speed;
  int x;
  int y;

  Osc2 (int _x, int _y, int _h, float _speed) {

    x = _x;
    y = _y;
    h = _h;
    speed = _speed;
  }


  void update() {

    float t = 0; // translation left right

    float instances = 20;
    float i = instances/2; //instance
    //float offset = .25;

    float wavelength = h/10;
    function = speed*counter + h-i*speed;
    float   value = map(function, -h, h, 0, 100); 
    value = value%100;

    textSize(28);
    textAlign(CENTER);
    fill(255);
    text("sawtooth wave: " + int(value), x-(wavelength - h), y+h*1.5);

    rectMode(CENTER);
    fill(255, value);
    noStroke();
    rect(x+wavelength*i-wavelength, y, 2*h, 2*h);

    fill(255);
    noStroke();
    ellipse(x-(wavelength - h), (y-h)+(100-value), 20, 20);
  }
}