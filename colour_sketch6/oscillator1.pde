void oscillator1() {
  
  counter = counter + 0.1;
  
  //variables of sin wave
  
  float h = height/24; // amp
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
  textAlign(RIGHT);
  float value = map(y+function, y-h, y+h, 100, 0); 
  fill(255);
  text("sin wave: " + int(value), x, height/2+height/4);

  rectMode(CENTER);
  fill(255, value);
  noStroke();
  rect(x+wavelength*i-wavelength, y, 2*h, 2*h);

  fill(255);
  noStroke();
  ellipse(x - (wavelength - h), y+function, 20, 20);
}