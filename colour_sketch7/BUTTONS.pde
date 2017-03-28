void createButtons() {

  int font_size = 18;

  // Firstly, we create a group that out buttons will bind to. 
  Group buttons = cp5.addGroup("buttons")
    .setPosition(width/14 * 11, height/2 + height/8)
    .setBackgroundHeight(0)
    .setWidth(0)
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

  cp5.addButton("SAVE")
    .setPosition(300, 310)
    .setColorBackground(color(100, 20, 20))
    .setSize(width/48, height/48)
    .setFont(createFont(font, font_size))
    .setGroup(buttons);
  ;
}

public void SAVE() {
  
  
}

public void SIN_ON() {

  toggle = true;//oscillator 1 class
  Osc1 wave1 = new Osc1(2*width/24, height/2, height/24, 1);
  counter = counter + 0.1;
  wave1.update();
  value = map(height/2+function, height/2-height/24, height/2+height/24, -1, 1);
  cp5.getController("r_c").setValue(value);
  cp5.getController("g_c").setValue(value);
  cp5.getController("b_c").setValue(value);
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
  cp5.getController("r_c").setValue(value);
  cp5.getController("g_c").setValue(value);
  cp5.getController("b_c").setValue(value);
}

public void SAW_OFF() {
  toggle2 = false;
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