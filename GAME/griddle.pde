// Block class
class Block {
  int x, y, rectWidth, rectHeight;
  boolean destroyed = false;

  Block(int x, int y, int rectWidth, int rectHeight) {
    this.x = x;
    this.y = y;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
  }

  void display() {
    if (!destroyed) {
      fill(255, 0, 0); // Red color
      rect(x, y, rectWidth, rectHeight);
    }
  }

  boolean checkCollision(Ball ball) {
    if (!destroyed &&
        ball.x + ball.radius > x && ball.x - ball.radius < x + rectWidth &&
        ball.y + ball.radius > y && ball.y - ball.radius < y + rectHeight) {
      destroyed = true;
      return true;
    }
    return false;
  }
}

// Blocks grid class
class Blocks {
  Block[][] blockGrid;
  int rows, cols;

  Blocks(int rows, int cols, int startX, int startY, int blockWidth, int blockHeight) {
    blockGrid = new Block[rows][cols];
    this.rows = rows;
    this.cols = cols;

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        int x = startX + c * blockWidth;
        int y = startY + r * blockHeight;
        blockGrid[r][c] = new Block(x, y, blockWidth - 5, blockHeight - 5); //creates grid and puts spacing between each one
      }
    }
  }

  void display() {
    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        blockGrid[r][c].display();
      }
    }
  }

  void checkCollisionWithBall(Ball ball) {
    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        if (blockGrid[r][c].checkCollision(ball)) {
          ball.ySpeed *= -1; // Reverse direction
          score += 10;
        }
      }
    }
  }

  boolean allDestroyed() {
    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        if (!blockGrid[r][c].destroyed) {
          return false;
        }
      }
    }
    return true;
  }
}
