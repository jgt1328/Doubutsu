class BaseArea extends AbstractArea {

  BaseArea(int posX, int posY, int yoko, int tate) {
    super(posX, posY, yoko, tate);
  }

  void draw() {
    for (int i=posX; i< posX+yoko; i++) {
      for (int j=posY; j< posY+tate; j++) {
        fill(#ffffc5);
        if (i==posX) fill(#c5ffc5);
        else if (i==posX+yoko-1) fill(#c5ffff);
        rect(i*SQUARESIZE, j*SQUARESIZE, SQUARESIZE, SQUARESIZE);
      }
    }
  }
}