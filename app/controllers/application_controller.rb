class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play
    moves = ["rock", "paper", "scissors"]
    computer_move = moves.sample
    human_move=params.fetch("hand")
    
    if computer_move == human_move
      outcome = "tied"
    elsif (computer_move == "paper" && human_move == "rock") || (computer_move == "rock" && human_move == "scissors") || (computer_move == "scissors" && human_move == "paper")
      outcome = "lost"
    else
      outcome = "won"
    end

    full_message = "You played " + human_move + ". They played " + computer_move + ". You " + outcome + "!"

    render({ :plain =>  full_message })
  end
  
end
