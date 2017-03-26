  void createSliders() {
  int font_size = 30;
  
  int sl_height_1 = 0;
  int sl_height_2 = height/12;
  int sl_height_3 = 2*height/12;

  int sl_width_a = 0;
  int sl_width_b = width/8;
  int sl_width_b2 = width/8;
  int sl_width_c = 2 * width/8 ;
  int sl_width_d = 3 * width/8;

  // Firstly, we create a group that out sliders will bind to. 
  Group sliders = cp5.addGroup("sliders")

    .setPosition(width/4, height/2 + height/8)
    .setBackgroundHeight(0)
    //.setFont(createFont(font, font_size))
    //.setHeight(40)
    .setWidth(0)
    //.setBackgroundColor(color(0))
    ;
  Textlabel SliderLabel;

  SliderLabel = cp5.addTextlabel("sliderLabel")
    .hide()
    //.setText("Background Colours")
    //.setSize(width/4, height/8)
    //.setPosition(0, 5)
    //.setColorValue(0xffffff00)
    //  .setFont(createFont("Georgia", 100))
    .setGroup(sliders);

  // Next we add horizontal sliders, the value of this slider will be linked
  // to variable 'bg_Red' 

  cp5.addSlider("r_a")
    //.setCaptionLabel()
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_1)
    .setRange(-1, 1)
    .setValue(r_a)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(255, 0, 0, 30))
    .setColorValue(color(255))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);

  cp5.addSlider("g_a")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_2)
    .setRange(-1, 1)
    .setValue(g_a)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 255, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("b_a")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_3)
    .setRange(-1, 1)
    .setValue(b_a)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  /////////////11111/////////////
  cp5.addSlider("r_b")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_1)
    .setRange(-1, 1)
    .setValue(r_b)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(255, 0, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("g_b")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_2)
    .setRange(-1, 1)
    .setValue(g_b)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 255, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("b_b")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_3)
    .setRange(-1, 1)
    .setValue(b_b)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;


  ////////////////////////////2222222222/////////////

  cp5.addSlider("r_c")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_1)
    .setRange(-1, 1)
    .setValue(r_c)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(255, 0, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("g_c")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_2)
    .setRange(-1, 1)
    .setValue(g_c)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 255, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("b_c")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_3)
    .setRange(-1, 1)
    .setValue(b_c)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;


  ////////////////////////////33333333333333/////////////

  cp5.addSlider("r_d")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_1)
    .setRange(-1, 1)
    .setValue(r_d)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(255, 0, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("g_d")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_2)
    .setRange(-1, 1)
    .setValue(r_d)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 255, 0, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

  cp5.addSlider("b_d")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_3)
    .setRange(-1, 1)
    .setValue(r_d)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);

  cp5.getController("r_a")
    .getCaptionLabel()
    .hide();

  cp5.getController("r_b")
    .getCaptionLabel()
    .hide();

  cp5.getController("r_c")
    .getCaptionLabel()
    .hide();

  cp5.getController("r_d")
    .getCaptionLabel()
    .hide();
  cp5.getController("g_a")
    .getCaptionLabel()
    .hide();

  cp5.getController("g_b")
    .getCaptionLabel()
    .hide();

  cp5.getController("g_c")
    .getCaptionLabel()
    .hide();

  cp5.getController("g_d")
    .getCaptionLabel()
    .hide();

  cp5.getController("b_a")
    .getCaptionLabel()
    .hide();

  cp5.getController("b_b")
    .getCaptionLabel()
    .hide();

  cp5.getController("b_c")
    .getCaptionLabel()
    .hide();

  cp5.getController("b_d")
    .getCaptionLabel()
    .hide();
}