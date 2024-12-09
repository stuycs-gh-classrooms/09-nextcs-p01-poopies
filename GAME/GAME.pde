// Global variables
Paddle paddle;
Ball ball;
Blocks blocks;

void setup() {
  size(800, 600); // Window size

  // Initialize game objects
  paddle = new Paddle(width / 2, height - 40, 100, 10);
  ball = new Ball(width / 2, height / 2, 10, color(255, 255, 255), 4, -4);
  blocks = new Blocks(5, 10, 50, 50, (width-100)/10, ((height/4 + 50)/5)); // 5 rows, 10 columns
}

void draw() {
  background(0); // Clear screen with black background

  // Display and move game elements
  paddle.display();
  paddle.update();

  ball.display();
  ball.move();
  ball.checkCollisionWithWalls(width, height);
  ball.checkCollisionWithPaddle(paddle);

  blocks.display();
  blocks.checkCollisionWithBall(ball);

  // Check if the ball goes out of bounds
  if (ball.y - ball.radius > height) {
    gameOver();
  }

  // Check if all blocks are destroyed
  if (blocks.allDestroyed()) {
    winGame();
  }
}

// Game objects
