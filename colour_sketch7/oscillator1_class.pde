
//float counter;

class Osc1 {

  int h;
  float speed;
  int x;
  int y;

  Osc1 (int _x, int _y, int _h, float _speed) {

    x = _x;
    y = _y;
    h = _h;
    speed = _speed;
  }


  void update() {

    float t = 0; // translation left right

    float instances = 10;
    float i = instances/2; //instance
    float offset = .25;

    float wavelength = h/10;
    function = h * sin(speed * counter - (offset*(i) - t));
    float value = map(y+function, y-h, y+h, 100, 0);

    textSize(28);
    textAlign(CENTER);
    fill(255);
    text("sin wave: " + int(value), x-(wavelength - h), y+h*2);

    //rectMode(CENTER);
    //fill(255, value);
    //noStroke();
    //rect((x+wavelength*i-wavelength)+h, y, 2*(2*h), 2*h);


    for (i = 0; i<instances; i++) {
      function = h * sin(speed * counter - (offset*(15*i) - t));


      fill(255);
      noStroke();
      ellipse((x-(wavelength - h)+15*i)-h, y+function, 10, 10);
      stroke(255);
      line((x-(wavelength - h)+15*i)-h, y+function, (x-(wavelength - h)+15*i)-h, y-h);
    }
  }
}