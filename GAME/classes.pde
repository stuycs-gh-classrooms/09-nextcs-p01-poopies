class Ball {
  // Instance variables
  float x;            // x-coordinate of the ball
  float y;            // y-coordinate of the ball
  float radius;       // Radius of the ball
  float xSpeed;    // Horizontal speed of the ball
  float ySpeed;    // Vertical speed of the ball
  color ballColor;    // Color of the ball

  // Constructor
  Ball(float x, float y, float radius, color ballColor, float xSpeed, float ySpeed) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.ballColor = ballColor;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }

  // Method to draw the ball
  void display() {
    fill(ballColor);
    noStroke();
    ellipse(x, y, radius * 2, radius * 2);
  }

  // Method to move the ball
  void move() {
    x += xSpeed;
    y += ySpeed;
  }

  // Method to check for collisions with window walls
  void checkCollisionWithWalls(float windowWidth, float windowHeight) {
    // Bounce off left and right walls
    if (x - radius <= 0 || x + radius >= windowWidth) {
      xSpeed *= -1;
    }

    // Bounce off the top wall
    if (y - radius <= 0) {
      ySpeed *= -1;
    }
  }

  // Method to bounce vertically (for collision with paddle or bricks)
  void bounceVertical() {
    ySpeed *= -1;
  }

  // Method to reset the ball position
  void reset(float startX, float startY) {
    x = startX;
    y = startY;
    xSpeed = random(-5, 5);  // Reset velocity to a random direction
    ySpeed = -5;
  }
}

class griddle {
  
  //instance variables 
