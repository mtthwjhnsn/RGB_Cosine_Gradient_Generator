
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

    float instances = 10;
    float i = instances/2; //instance
    //float offset = .25;

    float wavelength = h/10;
    function = speed*counter + h-i*speed;
    float   value = map(function, -h, h, 0, 100); 
    value = value%100;

    textSize(28);
    textAlign(CENTER);
    fill(255);
    text("sawtooth wave: " + int(value), x-(wavelength - h), y+h*2);

    //rectMode(CENTER);
    //fill(255, value);
    //noStroke();
    //rect(x+wavelength*i-wavelength, y, 2*h, 2*h);

    fill(255);
    noStroke();
    for (i = 0; i<instances; i++) {
      function = speed*counter + h-(15*i)*speed;
      value = map(function, 0, 2*h, 0, 100); 
      value = value%100;
      ellipse((x+(15*i)-(wavelength - h))-h, (y-h)+(100-value), 10, 10);
      stroke(255);
      line((x+(15*i)-(wavelength - h))-h, (y-h)+(100-value), (x+(15*i)-(wavelength - h))-h, y - h);
    }
  }
}