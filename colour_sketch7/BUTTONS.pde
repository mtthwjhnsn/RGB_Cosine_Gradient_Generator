void createButtons() {
  

   int font_size = 30;
  
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
  
    //cp5.addToggle("OSCILLATE")
    //.setPosition(0, 290)
    //.setColorBackground(color(100))
    //.setSize(width/24, height/24)

    //.setFont(createFont(font, font_size))
    //.setGroup(buttons);
  ;
}