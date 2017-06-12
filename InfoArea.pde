class InfoArea extends AbstractArea {
  InfoArea(int posX, int posY, int yoko, int tate) {
    super(posX, posY, yoko, tate);
  }
  void draw() {
    fill(#FFFFFF);
    rect(posX*SQUARESIZE, posY*SQUARESIZE, yoko*SQUARESIZE, tate*SQUARESIZE);
    fill(#000000);
    textSize(20);
    text("<- Left turn", (posX+0.3)*SQUARESIZE, (posY+0.5)*SQUARESIZE);
  }
}