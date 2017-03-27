float counter;
void setup () {


  size (1920, 1080, P2D);
  //fullScreen();
  background(0);
  counter = 0;
}


void draw () {

  background(0);
  
      for(int i = 1; i < oscillator1.size(); i++){
      //rotate(i*radians(1));
      Oscillator1 help = oscillator1.get(i);
      Oscillator1.update();
      Oscillator1.draw();
  //oscillator1();
}

// oscillator visualisation



}

void keyPressed() {
  
  if(key == 'c'){
  //circles.clear();
  oscillator1.clear();
  }
}
//--------------------------------------
void mouseDragged () {
  //circles.add(new Circle(mouseX, mouseY));
  
  oscillator1.add(new Oscillator1(mouseX, mouseY, 100, 0.1));
  
}