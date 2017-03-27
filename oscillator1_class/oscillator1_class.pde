float function;
float counter;


void setup(){
  
  size (1820, 1080);
  background(0);
  counter = 0;
  
  }
  
void draw(){
  Osc1 wave1 = new Osc1(2*width/12, height/2, height/12, 1);
  counter = counter + 0.1;
  background(0);
  wave1.update();
  }