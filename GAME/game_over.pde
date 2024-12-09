// Game states
void gameOver() {
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text("Game Over!", width / 2, height / 2);
  noLoop();
}

void winGame() {
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text("You Win!", width / 2, height / 2);
  noLoop();
}
