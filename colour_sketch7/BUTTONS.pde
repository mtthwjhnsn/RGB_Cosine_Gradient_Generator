void createButtons() {

  int font_size = 18;

  // Firstly, we create a group that out buttons will bind to. 
  Group buttons = cp5.addGroup("buttons")
    .setPosition(width/14 * 11, height/2 + height/8)
    .setBackgroundHeight(height/2)
    .setWidth(160)
    .setColorBackground(color(255))

    ;


  ;

  // Secondly, we will write a label on screen to notify the user what 
  // the sliders control.
  Textlabel ButtonLabel;

  ButtonLabel = cp5.addTextlabel("randomize")
    .setText("randomize")
    .setPosition(0, 0)
    .setSize(width/12, height/12)
    .setColorValue(color(255))
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a toggle switch
  cp5.addButton("RED")
    .setPosition(0, 50)
    .setColorBackground(color(255, 0, 0))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("GREEN")
    .setPosition(100, 50)
    .setColorBackground(color(0, 255, 0))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("BLUE")
    .setPosition(200, 50)
    .setColorBackground(color(0, 0, 255))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("A")
    .setPosition(0, 120)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("B")
    .setPosition(100, 120)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("C")
    .setPosition(200, 120)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("D")
    .setPosition(300, 120)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);

  // Here we add a Button switch
  cp5.addButton("ALL")
    .setPosition(0, 190)
    .setColorBackground(color(100))
    .setSize(width/24, height/24)

    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;

  cp5.addToggle("SIN_ON")
    .setPosition(0, 250)
    .setColorBackground(color(100))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;

  cp5.addToggle("SIN_OFF")
    .setPosition(100, 250)
    .setColorBackground(color(100))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;

  cp5.addToggle("SAW_ON")
    .setPosition(0, 310)
    .setColorBackground(color(100))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;

  cp5.addToggle("SAW_OFF")
    .setPosition(100, 310)
    .setColorBackground(color(100))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;

  cp5.addToggle("_A")
    .setPosition(150+width/48, 250)
    .setColorBackground(color(100))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;

  cp5.addToggle("_B")
    .setPosition(160+2*width/48, 250)
    .setColorBackground(color(100))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;

  cp5.addToggle("_C")
    .setPosition(170+3*width/48, 250)
    .setColorBackground(color(100))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;

  cp5.addToggle("_D")
    .setPosition(180+4*width/48, 250)
    .setColorBackground(color(100))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;
}

void change() {

  if (_a > 1) _a = 0;
  if (_b > 1) _b = 0;
  if (_c > 1) _c = 0;
  if (_d > 1) _d = 0;
  if (_a == 0) change_a = false;
  if (_a == 1) change_a = true;
  if (_b == 0) change_b = false;
  if (_b == 1) change_b = true;
  if (_c == 0) change_c = false;
  if (_c == 1) change_c = true;
  if (_d == 0) change_d = false;
  if (_d == 1) change_d = true;
}

public void SIN_ON() {
  change();

  println(str(change_a) + "____" + str(change_b) + "____" + str(_c) + "____" + str(_d)); 
  toggle = true;//oscillator 1 class
  SinWave sins = new SinWave(12*width/24, height/2, height/24, 1);
  counter = counter + 0.1;
  sins.update();
  //value = map(height/2+function, height/2-height/24, height/2+height/24, -1, 1);

  if (change_a == true) {
    cp5.getController("r_a").setValue(value1);
    cp5.getController("g_a").setValue(value2);
    cp5.getController("b_a").setValue(value3);
  } else if (change_a == false) {
    cp5.getController("r_a").setValue(r_a);
    cp5.getController("g_a").setValue(g_a);
    cp5.getController("b_a").setValue(b_a);
  }

  if (change_b == true) {
    cp5.getController("r_b").setValue(value1);
    cp5.getController("g_b").setValue(value2);
    cp5.getController("b_b").setValue(value3);
  }
  if (change_b == false) {
    cp5.getController("r_b").setValue(r_b);
    cp5.getController("g_b").setValue(g_b);
    cp5.getController("b_b").setValue(b_b);
  }

  if (change_c == true) {
    cp5.getController("r_c").setValue(value1);
    cp5.getController("g_c").setValue(value2);
    cp5.getController("b_c").setValue(value3);
  }
  if (change_c == false) {
    cp5.getController("r_c").setValue(r_c);
    cp5.getController("g_c").setValue(g_c);
    cp5.getController("b_c").setValue(b_c);
  }

  if (change_d == true) {
    cp5.getController("r_d").setValue(value1);
    cp5.getController("g_d").setValue(value2);
    cp5.getController("b_d").setValue(value3);
  }
  if (change_d == false) {
    cp5.getController("r_c").setValue(r_c);
    cp5.getController("g_c").setValue(g_c);
    cp5.getController("b_c").setValue(b_c);
  }
}

public void SIN_OFF() {
  toggle = false;
}

public void SAW_ON() {

  toggle2 = true;//oscillator 1 class

  Osc2 wave2 = new Osc2(7*width/24, height/2, height/24, 20);
  counter = counter + 0.1;
  wave2.update();
  value = map(function, -height/24, height/24, 0, 2); 
  value = (value%2)-1;
}

public void SAW_OFF() {
  toggle2 = false;
}

public void _A() {
  _a = _a + 1;
}
public void _B() {
  _b = _b + 1;
}
public void _C() {
  _c = _c + 1;
}
public void _D() {
  _d = _d + 1;
}


//BUTTON FUNCTIONS
public void RED() {
  cp5.getController("r_a").setValue(random(-1, 1));
  cp5.getController("r_b").setValue(random(-1, 1));
  cp5.getController("r_c").setValue(random(-1, 1));
  cp5.getController("r_d").setValue(random(-1, 1));
}


public void GREEN() {
  cp5.getController("g_a").setValue(random(-1, 1));
  cp5.getController("g_b").setValue(random(-1, 1));
  cp5.getController("g_c").setValue(random(-1, 1));
  cp5.getController("g_d").setValue(random(-1, 1));
}

public void BLUE() {
  cp5.getController("b_a").setValue(random(-1, 1));
  cp5.getController("b_b").setValue(random(-1, 1));
  cp5.getController("b_c").setValue(random(-1, 1));
  cp5.getController("b_d").setValue(random(-1, 1));
}

public void A() {
  cp5.getController("r_a").setValue(random(-1, 1));
  cp5.getController("g_a").setValue(random(-1, 1));
  cp5.getController("b_a").setValue(random(-1, 1));
}

public void B() {
  cp5.getController("r_b").setValue(random(-1, 1));
  cp5.getController("g_b").setValue(random(-1, 1));
  cp5.getController("b_b").setValue(random(-1, 1));
}

public void C() {
  cp5.getController("r_c").setValue(random(-1, 1));
  cp5.getController("g_c").setValue(random(-1, 1));
  cp5.getController("b_c").setValue(random(-1, 1));
}

public void D() {
  cp5.getController("r_d").setValue(random(-1, 1));
  cp5.getController("g_d").setValue(random(-1, 1));
  cp5.getController("b_d").setValue(random(-1, 1));
}

public void ALL() {

  cp5.getController("r_a").setValue(random(-1, 1));
  cp5.getController("r_b").setValue(random(-1, 1));
  cp5.getController("r_c").setValue(random(-1, 1));
  cp5.getController("r_d").setValue(random(-1, 1));

  cp5.getController("g_a").setValue(random(-1, 1));
  cp5.getController("g_b").setValue(random(-1, 1));
  cp5.getController("g_c").setValue(random(-1, 1));
  cp5.getController("g_d").setValue(random(-1, 1));

  cp5.getController("b_a").setValue(random(-1, 1));
  cp5.getController("b_b").setValue(random(-1, 1));
  cp5.getController("b_c").setValue(random(-1, 1));
  cp5.getController("b_d").setValue(random(-1, 1));
}