# Battle

This web application allows users to play a two player game of Battle.

## Motivations for this project

* Learn to set up a web project with Testing frameworks 
* Test drive a Sinatra web app using RSpec, and Capybara
* Write code that is easy to change
* Practise separation of concerns using the MVC pattern
* Practise good OOD (especially in the Model)
* Skinny controllers
* Unit test classes in isolation using mocking 
* Stub out random behaviour to ensure feature tests pass consistently

## User Stories

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first

As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage
```

## Features

* Users can enter their names before the game
* Users can view both their opponents and their own HP
* Player 1 can attack Player 2, reducing their HP by a random amount of 0, 10, 20 or 50
* Game switches turns and Player 2 can attack Player 1, reducing their HP by a random amount of 0, 10, 20 or 50
* Previous two steps are repeated until game is over
* Confirmation message displayed showing who attacked who after each attack
* Game is over when one player reaches 0 HP or less
* A winner is declared
* Users can click 'Play again' and start a new game

## Approach
* 2 Classes: Player & Game 
* 3 Views: /index, /play, /attack & /game_over
* Fully test drove app using Spec & Capybara
* Aimed to use the MVC pattern to improve the maintainability of the app

## Getting started

1. clone repo to your local machine `git clone https://github.com/MHUS25/Battle.gitt`
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, `run bundle`

## Usage

To start the server, execute the ruby file directly `ruby app.rb`
Visit http://localhost:4567/ in your browser to play the game.
Don’t forget to shutdown the server with Control-C when you’re done  =P

## Running tests

Run both feature and unit tests using:
`rspec`
