
class RectDown {
  int loopTranslate = 520;
  float looSclSize = 1;
  float startTran = 0;
  
  RectDown(float startTran){
    this.startTran = startTran;
  }
  
  void draw() {
    pushMatrix();
    translate(startTran, loopTranslate*2);
    float sclSize = cos(radians(looSclSize * 3.5));
    scale(map(sclSize, -1, 1, .5, 1));
    noFill();
    stroke(0, 0, 0, 128);
    rect(-100, -40, 200, 80);   
    popMatrix();
  }

  void countLoopTranslate() {
    loopTranslate --;
  }

  void countLoopSclSize() {
    looSclSize ++;
  }
}
