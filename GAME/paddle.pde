// Paddle class
class Paddle {
  float x, y, width, height;

  Paddle(float x, float y, float width, float height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  void display() {
    fill(255); // White color
    rect(x, y, width, height);
  }

  void update() {
   // x = constrain(mouseX - width / 2, 0, width - this.width);
    this.x=mouseX;
  }

  boolean checkCollision(Ball ball) {
    return (ball.y + ball.radius >= y &&
            ball.x > x && ball.x < x + width);
  }
}
