Slider paddle; // Declare paddle
Ball ball; // Declare ball

void setup() {
  size(800, 600);
  paddle = new Slider(width / 2 - 50, height - 30, 100, 10, color(255, 0, 0));
  ball = new Ball(width / 2, height / 2, 10, color(255, 0, 0), 3, 3); // Create new paddle
}

void draw() {
  background(0);
  paddle.updatePosition(mouseX);
  paddle.display();

  ball.move();
  ball.checkCollisionWithWalls(width, height);
  ball.checkCollisionWithPaddle(paddle);  // Check collision with paddle
  ball.display();
}
