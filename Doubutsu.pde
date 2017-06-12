final int SQUARESIZE = 100;
Board board;
KomaList komaList;
GameStatus gs;

void setup() {
  surface.setSize(6*SQUARESIZE, 4*SQUARESIZE);
  board = new Board();
  komaList = new KomaList();
  gs = new GameStatus();
}

void draw() {
  board.draw();
  komaList.draw();
}

void mouseReleased() {
  int x = mouseX/SQUARESIZE;
  int y = mouseY/SQUARESIZE;
  board.select(x, y);
}