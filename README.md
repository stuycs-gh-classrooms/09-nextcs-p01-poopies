[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/PX83n--N)
# NeXtCS Project 01
### Name0: Wade Guo
### Name1: Emily Li
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Breakout

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

Screen -- creates screen 

Slider -- to control using the keys and/or the mouse.

Ball -- bounces off sliders and collides with bricks to make them dissappear.

Bricks -- create bricks that are set up in order and lave space margins between each brick

collistionChecker -- checks if an object has touched another object 

scoreBoard -- shows the scores based on how many balls has interacted with the bricks, updated everytime it collides

livesBoard -- shows amount of lives avaliable and decreases the lives when ball has exceeded a certain area.

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

Colors -- to differ between different bricks as well as the slider and ball.

End scene -- shows an end frame when the ball has won the game (when there are no bricks on the screen)

Speed -- changes the speed for a more dynamic and engaging playtime 

time -- shows the time from when the ball is first launched and resets every time

power ups -- creates small powerups like more balls.

### Array Usage
How will you be using arrays in this project?

1D Array:
- To store and manage a list of elements such as power-ups, high scores, or player lives.

2D Array:
- Used for managing the brick layout and tracking their states during the game.


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- When 'r' is press, reset game

Mouse Control:
- Mouse movement: The mouse movement will control the horizontal position of the paddle, allowing the player to move it left or right across the screen.

- Mouse pressed: The mouse click will be used to start or restart the game by launching the ball from its starting position.


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CLASS BALL
- Instance variables:
  - x: The current x-coordinate of the ball.
  - y: The current y-coordinate of the ball.
  - radius: The radius of the ball.
  - x_velocity: The horizontal velocity of the ball.
  - y_velocity: The vertical velocity of the ball.
  - color: The color of the ball (for rendering).
  - is_moving: A boolean indicating if the ball is currently moving.

- METHODS
  - init(self, x, y, radius, color): Initializes the ball's position, size, and color.
  - move(self): Updates the ball’s position based on its velocity.
  - check_collision(self, slider, grid): Checks for collisions with the paddle, walls, and bricks.
  - bounce_horizontal(self): Reverses the horizontal direction of the ball.
  - bounce_vertical(self): Reverses the vertical direction of the ball.
  - reset(self): Resets the ball’s position and stops movement after a life is lost.

CLASS GRID
- Instance variables:
  - rows: Number of rows in the grid.
  - cols: Number of columns in the grid.
  - bricks: A 2D array representing the state of each brick (1 for present, 0 for destroyed).
  - brick_width: The width of each brick.
  - brick_height: The height of each brick.
  - color: The color of the bricks (can vary for different rows or difficulty).
- METHODS
  - init(self, rows, cols, brick_width, brick_height): Initializes the grid with a specified number of rows and columns.
  - draw(self): Renders the bricks on the screen.
  - check_collision(self, ball): Checks if the ball has collided with a brick, and if so, removes the brick and updates the score.
  - is_empty(self): Returns True if all bricks have been destroyed, signaling the end of the level.

CLASS SLIDER
- Instance variables:
  - x: The current x-coordinate of the paddle.
  - y: The fixed y-coordinate of the paddle (usually near the bottom of the screen).
  - width: The width of the paddle.
  - height: The height of the paddle.
  - color: The color of the paddle.
  - speed: The speed at which the paddle can move.
  - window_width: The width of the game window (used to limit paddle movement).
- METHODS
  - init(self, x, y, width, height, color, window_width): Initializes the paddle’s position, size, and color.
  - move_left(self): Moves the paddle left, ensuring it doesn’t go out of bounds.
  - move_right(self): Moves the paddle right, ensuring it doesn’t go out of bounds.
  - update_position(self, mouse_x): Updates the paddle's position based on mouse movement.
  - check_collision(self, ball): Checks if the ball has collided with the paddle and adjusts the ball’s velocity accordingly.
