void oscillator2() {
  counter = counter + 0.1;
  
  //variables of sin wave
  
  float h = height/24; // amp
  float t = 0; // translation left right
  
  float speed = 7.5;
  float wavelength = h/10;
  
  float x = width/12 * 3 + wavelength - h; // xpositiion centred
  float y = height/2; //y position
  
  float instances = 20;
  float i = instances/2; //instance
  //float offset = .25;

  float function = speed*counter + h-i*speed;
  
  textSize(28);
  textAlign(RIGHT);
  value = map(function, -h, h, 0, 100); 
  value = value%100;
  text("sawtooth wave: " + int(value), 279.5, height/2+height/4+30);

  rectMode(CENTER);
  fill(255, value);
  noStroke();
  rect(x+wavelength*i-wavelength, y, 2*h, 2*h);

  fill(255);
  noStroke();
  ellipse(x+h, (y-h)+(100-value), 20, 20);


}