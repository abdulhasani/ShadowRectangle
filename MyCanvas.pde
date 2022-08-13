ArrayList<RectUp> rectUps = new ArrayList<RectUp>(); 
ArrayList<RectDown> rectDowns = new ArrayList<RectDown>(); 
void setup() {
  fullScreen();
  background(255);
  smooth();
  float tranX= 130;
  for (int i=0; i < 12; i++) {
    RectUp rectUp = new RectUp(tranX);
    rectUps.add(rectUp);

    RectDown rectDown= new RectDown(tranX);
    rectDowns.add(rectDown);
    tranX += 150;
  }
}

void draw() {
  for (int i=0; i < rectUps.size(); i++) {
    RectUp rectUp = rectUps.get(i);
    if (rectUp.loopTranslate <= 256) {
      rectUp.draw();
      rectUp.countLoopTranslate();
      rectUp.countLoopSclSize();
    }
    RectDown rectDown = rectDowns.get(i);
    if (rectDown.loopTranslate >= 265) {
      rectDown.draw();
      rectDown.countLoopTranslate();
      rectDown.countLoopSclSize();
    }

    if (rectUp.loopTranslate == 256 && rectDown.loopTranslate == 265) {
      delay(100);
      background(255);
      smooth();
      rectUp.loopTranslate = 1;
      rectUp.looSclSize = 1;

      rectDown.loopTranslate = 520;
      rectDown.looSclSize = 1;
    }
  }
}
