// Ball class

class Ball {
  float x, y, radius, xSpeed, ySpeed;
  color ballColor;

  Ball(int x, int y, int radius, int ballColor, int xSpeed, int ySpeed) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.ballColor = ballColor;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }

  void display() {
    fill(ballColor);
    circle(x, y,radius * 2);
  }

  void move() {
    x += xSpeed;
    y += ySpeed;
  }

  void checkCollisionWithWalls(int w,int h) {
    if (x - radius <= 0 || x + radius >= w) {
      xSpeed *= -1;
    }

    if (y - radius <= 0) {
      ySpeed *= -1;
    }
  }

  void checkCollisionWithPaddle(Paddle paddle) {
    if (paddle.checkCollision(this)) {
      ySpeed *= -1;
      y = paddle.y - radius; // Adjust position to avoid sticking
    }
  }
}
