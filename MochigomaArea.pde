class MochigomaArea extends AbstractArea {
  MochigomaArea(int posX, int posY, int yoko, int tate) {
    super(posX, posY, yoko, tate);
  }
  void draw() {
    for (int i=posX; i<posX+yoko; i++) {
      for (int j=posY; j<posY+tate; j++) {
        fill(#dddddd);
        rect(i*SQUARESIZE, j*SQUARESIZE, SQUARESIZE, SQUARESIZE);
      }
    }
  }
  int getBlankYIndex() {
    for (int i=this.posY; i<this.posY+this.tate; i++) {
      AbstractKoma koma = komaList.getKomaFromPlace(this.posX, i);
      if (koma==null) return i;
    }
    return -1;//空きが無い場合
  }

}