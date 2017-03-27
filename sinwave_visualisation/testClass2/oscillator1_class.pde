


////ArrayList<Oscillator1> oscillator1 = new ArrayList<Oscillator1>();


//class Oscillator1{
  
//   int h = 100; // amp
//  float t = 0; // translation left right
  
//  float speed = 1;
//  float wavelength = h/10;
  
//  int x = width/4 + int(wavelength) - h; // xpositiion centred
//  int y = height/2; //y position
  
//  float instances = 20;
//  float i = instances/2; //instance
//  float offset = .25;

//  float function = h * sin(speed * counter - (offset*(i) - t));
  
//  //Constructor
// Oscillator1(int _x, int _y, int _h, float _speed){
// x = _x;
// y = _y;
// h = _h;
// speed = _speed;
// //radius = 200;
//  }
  
//  void update(){
//    speed++;
    
//  }

//  void draw() {
  
//  counter = counter + 0.1;
  
//  //variables of sin wave
  
//  for (i = 0; i<instances; i++) {
//    float _function = h * sin(speed * counter - (offset*(i) - t));
//    float _function2 = h * sin(speed * counter - ((offset*(i-1)) - t));

//    //rect(x+(instances*i), _function2, 10, 10);
//    stroke(255);
//    line(x+(wavelength*i), y+_function, x+(wavelength*(i-1)), y+_function2);
//  }

//  rectMode(CENTER);
//  rect(x+wavelength/2*i-wavelength, y, 2*h, 2*h);
//  noFill();
//  stroke(255, 0, 0);
//  strokeWeight(2);
//  ellipse(x+wavelength/2*i-wavelength, y+function, 20, 20);

//}
//}