Rock, Paper, Scissors

Let's play! You have to return which player won! In case of a draw return `Draw!`.

Examples:


Prelude> rps "rock" "scissors"
"Player 1 won!"
Prelude> rps "paper" "scissors"
"Player 2 won!"
Prelue> rps "paper" "paper"
"Draw!"



> module Codewars.RockPaperScissors where

> rps :: String -> String -> String
> rps "rock" "scissors"     = "Player 1 won!"
> rps "rock" "paper"        = "Player 2 won!"
> rps "rock" "rock"         = "Draw!"
> rps "scissors" "rock"     = "Player 2 won!"
> rps "scissors" "paper"    = "Player 1 won!"
> rps "scissors" "scissors" = "Draw!"
> rps "paper" "rock"        = "Player 1 won!"
> rps "paper" "scissors"    = "Player 2 won!"
> rps "paper" "paper"       = "Draw!"
