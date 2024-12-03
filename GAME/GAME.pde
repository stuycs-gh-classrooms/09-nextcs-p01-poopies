Ball ball;

void setup() {
  size(800, 600);  // Set window size
  ball = new Ball(width / 2, height / 2, 10, color(255, 0, 0), 3, 3);  // Create a new Ball object
}

void draw() {
  background(0);  // Clear the screen
  ball.move();    // Move the ball
  ball.checkCollisionWithWalls(width, height);  // Check collisions with walls
  ball.display(); // Display the ball
}
