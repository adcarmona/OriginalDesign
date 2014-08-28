//OriginalDesign - Antonio Carmona
int righteyeX = 170;
int lefteyeX = 230;
int righteyeY = 70;
int lefteyeY = 70;
int eyeheight = 20;
int blinkcounter = 1;
int eyesclosed = 0;
float armY1 = 180;
float armY2 = 270;
int armsup = 0;
int armtimer = 0;
int eyeslocked = 0;
int mouselockX = 0;
int mouselockY = 0;

void setup()
{
  background(200);
  size(400, 400);
  frameRate(120);
}

void draw()
{
  background(200);
  body();
  head();
  lock();
}
void head()
{
  //Head
  strokeWeight(4);
  fill(255);
  ellipse(200, 80, 130, 130);
  //Eyes
  blinkcounter = blinkcounter + 1;
  fill(0);
  ellipse(lefteyeX, lefteyeY, 20, eyeheight);
  ellipse(righteyeX, righteyeY, 20, eyeheight);
  if (eyeslocked == 0) {
  if (mouseX < 170) {
    if (righteyeX == 140 && lefteyeX == 200) {
    }
    else {
      righteyeX = righteyeX - 1;
      lefteyeX = lefteyeX - 1;
    }
  }
  if (mouseX > 230) {
    if (righteyeX == 200 && lefteyeX == 260) {
    }
    else {
      righteyeX = righteyeX + 1;
      lefteyeX = lefteyeX + 1;
    }
  }
  if (170 < mouseX && mouseX < 230) {
    if (righteyeX < 170 && lefteyeX < 230) {
      if (righteyeX == 170 && lefteyeX == 230) {
      }
      else {
        righteyeX = righteyeX + 1;
        lefteyeX = lefteyeX + 1;
      }
    }
    if (righteyeX > 170 && lefteyeX > 230) {
      if (righteyeX == 170 && lefteyeX == 230) {
      }
      else {
        righteyeX = righteyeX - 1;
        lefteyeX = lefteyeX - 1;
      }
    }
  }
  if (mouseY < 40) {
    if (righteyeY == 50 && lefteyeY == 50) {
    }
    else {
      righteyeY = righteyeY - 1;
      lefteyeY = lefteyeY - 1;
    }
  }
  if (mouseY > 100) {
    if (righteyeY == 100 && lefteyeY == 100) {
    }
    else {
      righteyeY = righteyeY + 1;
      lefteyeY = lefteyeY + 1;
    }
  }
  if (40 < mouseY && mouseY < 100) {
    if (righteyeY < 70 && lefteyeY < 70) {
      if (righteyeY == 70 && lefteyeY == 70) {
      }
      else {
        righteyeY = righteyeY + 1;
        lefteyeY = lefteyeY + 1;
      }
    }
    if (righteyeY > 70 && lefteyeY > 70) {
      if (righteyeY == 70 && lefteyeY == 70) {
      }
      else {
        righteyeY = righteyeY - 1;
        lefteyeY = lefteyeY - 1;
      }
    }
  }
}
  else {
  }
  if (blinkcounter > 200) {
    if (eyeheight > 1 && eyesclosed == 0) {
      eyeheight = eyeheight - 1;
    }
    else {
      eyesclosed = 1;
      if (eyeheight < 20 && eyesclosed == 1) {
        eyeheight = eyeheight + 1;
      }
      else {
        eyesclosed = 0;
        blinkcounter = 1;
      }
    }
  }
}
void body()
{
  strokeWeight(4);
  //Torso
  line(200, 145, 200, 290);
  //Arms
  line(200, armY1, 160, armY2);
  line(200, armY1, 240, armY2);
  if (armY1 > 166 && armY2 > 256 && armsup == 0) {
    if (armY1 < 177 && armY2 < 267) {
      if(armtimer < 200) {
        armtimer = armtimer + 1;
      }
      else {
      armsup = 1;
      }
    }
    else {
    armtimer = 0;
    armY1 = armY1 - .05;
    armY2 = armY2 - .05;
    }
  }
   if (armY1 < 181 && armY2 < 271 && armsup == 1) {
    if (armY1 > 180 && armY2 > 270) {
      if(armtimer < 200) {
        armtimer = armtimer + 1;
      }
      else {
      armsup = 0;
      }
    }
    else {
    armtimer = 0;
    armY1 = armY1 + .05;
    armY2 = armY2 + .05;
    }
  }
  //Legs
  line(200, 290, 160, 390);
  line(200, 290, 240, 390);
}
void lock() {
if (eyeslocked == 1) {
strokeWeight(1);
noFill();
ellipse(mouselockX,mouselockY,10,10);
ellipse(mouselockX,mouselockY,20,20);
fill(0);
line(mouselockX-20,mouselockY,mouselockX+20,mouselockY);
line(mouselockX,mouselockY-20,mouselockX,mouselockY+20);
}
else {

}

}
void mouseClicked() {
  if (mouseButton == LEFT) {
  if (eyeslocked == 0) {
    mouselockX = mouseX;
    mouselockY = mouseY;
    eyeslocked = 1;
   }
    else {
    }
  }
  else {
  if (eyeslocked  == 1) {
    eyeslocked = 0;
    }
    else {

    }
  }
}