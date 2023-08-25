# Math Game in Ruby

This is a simple math game written in Ruby where two players take turns answering simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or they lose a life.

The goal of this project was to build an OOP-based command-line application to practice fundamentals of OOP.


## Learning Objectives

- Practice creating and interacting with classes in an OOP context.
- Utilize instance variables and methods to manage game state and player actions.
- Implement loops and conditionals to control the flow of the game.
- Strengthen understanding of basic Ruby syntax and concepts.

## Getting Started

To play the game, you'll need to have Ruby installed on your computer.

1. **Clone or download** the repository to your local machine.
2. Open a terminal and **navigate to the project directory**.
3. **Run the game** by executing the following command: `ruby main.rb`
4. Follow the prompts to **play the game**.

## How the Game Works

The game has four main classes: `Game`, `Game Manager`, `Player`, and `MathQuestion`.

- The `Game` class controls the game flow, managing the game rounds, players, and their interactions.

- The `Game Manager` class handles the game initialization, rounds, and announcing the winner.

- The `Player` class is responsible for player-related actions such as asking and answering questions, and managing player lives.

- The `MathQuestion` class generates random math questions and checks the correctness of the answers.

## Files and Classes

- **game.rb**: Defines the **`Game`** class responsible for managing the game rounds, players, and their interactions.

- **game_manager.rb**: Contains the **`GameManager`** class that orchestrates the entire game and handles game initialization, rounds, and announcing the winner.

- **player.rb**: Contains the **`Player`** class responsible for player-related actions such as asking and answering questions, and managing player lives.

- `math_question.rb`: Contains the **`MathQuestion`** class responsible for generating math questions and validating answers.

- **main.rb**: The entry point of the game. Creates an instance of **`GameManager`** and starts the game.

## Further Improvements

This game serves as a basic demonstration of OOP principles and Ruby programming. To enhance the game, you could consider adding:

- More types of math questions (subtraction, multiplication, division).
- Difficulty levels with varying number ranges and operations.
- Additional players for multiplayer support.
- High score tracking across multiple games.

