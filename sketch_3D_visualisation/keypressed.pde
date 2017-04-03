void sinABCD () {

  keyfunction();
  //change();
  
  if (_a > 1) _a = 0;
  if (_b > 1) _b = 0;
  if (_c > 1) _c = 0;
  if (_d > 1) _d = 0;
  if (_sin > 1) _sin = 0;
  if (_saw > 1) _saw = 0;
  if (_r > 1) _c = 0;

  if (_sin == 0) change_sin = false;
  if (_sin == 1) change_sin = true;
  if (_saw == 0) change_saw = false;
  if (_saw == 1) change_saw = true;
  if (_a == 0) change_a = false;
  if (_a == 1) change_a = true;
  if (_b == 0) change_b = false;
  if (_b == 1) change_b = true;
  if (_c == 0) change_c = false;
  if (_c == 1) change_c = true;
  if (_d == 0) change_d = false;
  if (_d == 1) change_d = true;
  if (_r == 0) change_d = false;
  if (_r == 1) change_d = true;
  
  if (change_sin == true) {
    println(_sin);
  

    SinWave sins = new SinWave(12*width/24, height/2, height/24, 1);
    counter = counter + 0.1;
    sins.update();
    //value = map(height/2+function, height/2-height/24, height/2+height/24, -1, 1);

    if (change_a == true) {
      r_a = value1;
      g_a = value2;
      b_a = value3;
    }
    
        if (change_a == false) {
      r_a = r_a;
      g_a = g_a;
      b_a = b_a;
    }

    if (change_b == true) {
      r_b = value1;
      g_b = value2;
      b_b = value3;
    }
    
    if (change_b == false) {
      r_b = r_b;
      g_b = g_b;
      b_b = b_b;
    }



    if (change_c == true) {
      r_c = value1;
      g_c = value2;
      b_c = value3;
    }
    
    if (change_c == false) {
      r_c = r_c;
      g_c = g_c;
      b_c = b_c;
    }

    if (change_d == true) {
      r_d = value1;
      g_d = value2;
      b_d = value3;
    }
    
    if (change_d == false) {
      r_d = r_d;
      g_d = g_d;
      b_d = b_d;
    }

  }
    if (change_r == true) {
      r_a = random(-1, 1);
      g_a = random(-1, 1);
      b_a = random(-1, 1);  

      r_b = random(-1, 1);
      g_b = random(-1, 1);
      b_b = random(-1, 1);

      r_c = random(-1, 1);
      g_c = random(-1, 1);
      b_c = random(-1, 1);

      r_d = random(-1, 1);
      g_d = random(-1, 1);
      b_d = random(-1, 1);
    }
  }