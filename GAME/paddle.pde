class Slider {
  float x;               // Current x-coordinate of the paddle
  float y;               // Fixed y-coordinate of the paddle
  float width;           // Width of the paddle
  float height;          // Height of the paddle
  color paddleColor;     // Color of the paddle
  float speed;           // Speed at which the paddle can move

  // Constructor
  Slider(float x, float y, float width, float height, color paddleColor) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.paddleColor = paddleColor;
  }

  // Method to display the paddle
  void display() {
    fill(paddleColor);
    noStroke();
    rect(x, y, width, height);
  }

  // Updates the paddle's position based on mouse movement
  void updatePosition(float mouseX) {
    x = mouseX - width / 2;
    // Ensure the paddle stays within the screen boundaries
    x = constrain(x, 0, width - this.width);
  }

  // Checks if the ball has collided with the paddle
  boolean checkCollision(Ball ball) {
    return (ball.y + ball.radius >= y && ball.y - ball.radius <= y + height &&
            ball.x + ball.radius >= x && ball.x - ball.radius <= x + width);
  }
}
