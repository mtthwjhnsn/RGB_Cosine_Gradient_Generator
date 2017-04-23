void createSliders() {
  int font_size = 18;

  int sl_height_1 = 0;
  int sl_height_2 = height/36;
  int sl_height_3 = 2*height/36;

  int sl_width_a = 0;
  int sl_width_b = width/8;
  int sl_width_b2 = width/8;
  int sl_width_c = 2 * width/8 ;
  int sl_width_d = 3 * width/8;

  // Firstly, we create a group that out sliders will bind to. 
  Group sliders = cp5.addGroup("sliders")

    .setPosition(width/4, 8*height/12)
    .setBackgroundHeight(0)
    //.setFont(createFont(font, font_size))
    //.setHeight(sl_height_2)
    .setWidth(width/8*3)
    .setBackgroundColor(color(255))
    ;
  Textlabel SliderLabel;

  SliderLabel = cp5.addTextlabel("sliderLabel")
    .hide()
    .setText("Background Colours")
    .setSize(width/4, height/8)
    .setPosition(0, 5)
    .setColorValue(0xffffff00)
    .setFont(createFont("Georgia", 100))
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
    .setColorBackground(color(255, 0, 0))
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
  
    cp5.addSlider("bands")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_3+sl_height_2)
    .setRange(1, 100)
    .setValue(bands)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
      cp5.addSlider("speed")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_3+sl_height_3)
    .setRange(0.0, 5.0)
    .setValue(speed)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
//lfo type-----------------------------------------------------------
      cp5.addSlider("amp_lfo_type")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_2*7)
    .setRange(0, 4)
    .setValue(amp_lfo_type)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
        cp5.addSlider("freq_lfo_type")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_2*8)
    .setRange(0, 4)
    .setValue(freq_lfo_type)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
      cp5.addSlider("phase_lfo_type")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_a, sl_height_2*9)
    .setRange(0, 4)
    .setValue(phase_lfo_type)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
//lfo speed-----------------------------------------------------------
  
          cp5.addSlider("amp_lfo_speed")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_2*7)
    .setRange(0, 4)
    .setValue(amp_lfo_speed)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
      cp5.addSlider("freq_lfo_speed")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_2*8)
    .setRange(0, 4)
    .setValue(freq_lfo_speed)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
        cp5.addSlider("phase_lfo_speed")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_b, sl_height_2*9)
    .setRange(0, 4)
    .setValue(phase_lfo_speed)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;

//amps-----------------------------------------------------------

        cp5.addSlider("amp_lfo_amp")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_2*7)
    .setRange(0, 4)
    .setValue(amp_lfo_amp)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
          cp5.addSlider("freq_lfo_amp")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_2*8)
    .setRange(0, 4)
    .setValue(freq_lfo_amp)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
        cp5.addSlider("phase_lfo_amp")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_c, sl_height_2*9)
    .setRange(0, 4)
    .setValue(phase_lfo_amp)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
  //speeds-----------------------------------------------------------
          cp5.addSlider("amp_cycle_speed")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_2*7)
    .setRange(0, 4)
    .setValue(amp_cycle_speed)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
        cp5.addSlider("freq_cycle_speed")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_2*8)
    .setRange(0, 4)
    .setValue(freq_cycle_speed)
    .setColorValue(color(255))
    .setColorForeground(color(80))
    .setColorBackground(color(0, 0, 255, 30))
    .setFont(createFont(font, font_size))
    .setGroup(sliders);
  ;
  
        cp5.addSlider("phase_cycle_speed")
    .setSize(sl_width_b2, sl_height_2)
    .setPosition(sl_width_d, sl_height_2*9)
    .setRange(0, 4)
    .setValue(phase_cycle_speed)
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