void createKnobs() {
  
  
  
  // Firstly, we create a group that out knobs will bind to. 
  Group knobs = cp5.addGroup("knobs")
    .setPosition(width/4, height/2)
      .setBackgroundHeight(80)
        .setWidth(width/2)
          .setBackgroundColor(color(255, 100))
            ;

  // Secondly, we will write a label on screen to notify the user what 
  // the knobs control.
  Textlabel KnobLabel;

  KnobLabel = cp5.addTextlabel("knobLabel")
    .setText("3D Primative Params")
      .setPosition(0, 5)
            .setGroup(knobs);
  ;

  // Next we add knobs
  int knobRadius = width/48;

  //cp5.addKnob("size")
  //  .setPosition(width/24*2, 30)
  //    .setRange(0, 255)
  //      .setRadius(knobRadius)
  //      .setValue(sins.set(offset))
  //          .setGroup(knobs);
  //;

  cp5.addKnob("colour")
    .setPosition(width/24*6, 30)
      .setRange(0, 255)
        .setRadius(knobRadius)
            .setGroup(knobs);
  ;

  cp5.addKnob("rotate")
    .setPosition(width/24*10, 30)
      .setRange(0.0, 0.01)
        .setRadius(knobRadius)
            .setGroup(knobs);
  ;
}