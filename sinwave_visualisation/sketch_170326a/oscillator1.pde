void oscillator1() {
  counter = counter + 0.1;
  
  //variables of sin wave
  
  
  

  float h = height/12; // amp
  float t = 0; // translation left right
  
  float speed = .5;
  float wavelength = h/10;
  
  float x = width/12 * 2 + wavelength - h; // xpositiion centred
  float y = height/2; //y position
  
  float instances = 20;
  float i = instances/2; //instance
  float offset = .25;

  float function = h * sin(speed * counter - (offset*(i) - t));
  
  textSize(28);
  textAlign(CENTER);
  float value = map(y+function, y-h, y+h, 100, 0); 
  text("sin wave: " + int(value), x, height/2+height/4);
  
  //resolution = map(resolution, 0, resolution, 0, 10);

  rectMode(CENTER);
  fill(155+value, value, 255-value);
  noStroke();
  rect(x+wavelength*i-wavelength, y, 2*h, 2*h);

  for (i = 0; i<instances; i++) {
    float _function = h * sin(speed * counter - (offset*(i) - t));
    float _function2 = h * sin(speed * counter - ((offset*(i-1)) - t));

    //rect(x+(instances*i), _function2, 10, 10);
    stroke(255);
    strokeWeight(5);
    line(x+(wavelength*i), y+_function, x+(wavelength*(i-1)), y+_function2);
  }

  //ellipse(x+wavelength/2*i, y, 2*h, 2*h);

  fill(0);
  //stroke(255, 0, 0);
  //strokeWeight(1);
  noStroke();
  ellipse(x - (wavelength - h), y+function, 20, 20);


  //stroke(0);
  //line(width/4, 0, width/4, height);
  //line(0, height/2, width, height/2);
}