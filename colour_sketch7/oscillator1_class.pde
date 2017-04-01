class SinWave {

  int h;
  float speed;
  int x;
  int y;

  SinWave (int _x, int _y, int _h, float _speed) {

    x = _x;
    y = _y;
    h = _h;
    speed = _speed;
  }


  void update() {

    float t = 0; // translation left right
    float instances = 3;
    float i = instances/2; //instance
    float offset = .1;
    float wavelength = h/10;

    for (i = 0; i<3; i++) {

      function = h * sin(speed * counter - (offset*(15*i) - t));
      float value = map(y+function, y-h, y+h, 100, 0);
      fill(255);
      
      //setvalues for 3 sliders:
      if (i == 0) value1 = map(value, 0, 100, -1, 1);
      if (i == 1) value2 = map(value, 0, 100, -1, 1);
      if (i == 2) value3 = map(value, 0, 100, -1, 1);


      //ellipses
      noStroke();
      ellipse((x-(wavelength - h)+15*i)-h, y+function, 10, 10);

      //lines
      stroke(255);
      line((x-(wavelength - h)+15*i)-h, y+function, (x-(wavelength - h)+15*i)-h, y-h);

      //
      textSize(28);
      textAlign(CENTER);
      fill(255);
      text("sin wave :" + int(value), width - x-(wavelength - h), 2*h+30*i);
    }
  }
}