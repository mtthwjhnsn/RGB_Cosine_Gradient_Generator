void oscillator2() {
  counter = counter + 0.1;
  
  //variables of sin wave
  
  float h = mouseX; // amp
  float t = 0; // translation left right
  
  float speed = 10;
  float wavelength = h/10;
  
  float x = width/12 * 4 + wavelength - h; // xpositiion centred
  float y = height/2; //y position
  
  float instances = 20;
  float i = instances/2; //instance
  //float offset = .25;

  float function = speed*counter + h-i*speed;
  
  textSize(28);
  textAlign(CENTER);
  value = map(function, -h, h, 0, 100); 
  value = value%100;
  text("sawtooth wave: " + int(value), x, height/2+height/4);
  
  //resolution = map(resolution, 0, resolution, 0, 10);

  rectMode(CENTER);
  fill(value, 155+value, 255-value);
  noStroke();
  rect(x+wavelength*i-wavelength, y, 2*h, 2*h);

  for (i = 0; i<instances; i++) {
    float _function = speed*counter + h - i*speed;
    float _function2 = speed*counter + h - (i-1)*speed;
    float value = map(_function, -h, h, 0, 100);
    float value2 = map(_function2, -h, h, 0, 100);
    float _functionmod = 100-value%100;
    float _functionmod2 = 100-value2%100;
    //rect(x+(instances*i), _function2, 10, 10);
    stroke(255);
    strokeWeight(5);
    line(x+(wavelength*i), (y-h)+2*_functionmod, x+(wavelength*(i-1)), (y-h)+2*_functionmod2);
  }

  //ellipse(x+wavelength/2*i, y, 2*h, 2*h);

  fill(0);
  //stroke(255, 0, 0);
  //strokeWeight(1);
  noStroke();
  ellipse(x+h, (y-h)+2*(100-value), 20, 20);


  //stroke(0);
  //line(width/4, 0, width/4, height);
  //line(0, height/2, width, height/2);
}