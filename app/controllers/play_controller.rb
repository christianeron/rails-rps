class PlayController < ApplicationController
  
  def homepage
    render(:template => "homepage")
  end

  def rock
    moves = ["rock","paper","scissors"]
    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render(:template => "game_templates/play_rock")
  end

  def scissors
    moves = ["rock","paper","scissors"]
    @comp_move = moves.sample
    
    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render(:template => "game_templates/play_scissors")
  end

  def paper
    moves = ["rock","paper","scissors"]
    @comp_move = moves.sample
    
    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render(:template => "game_templates/play_paper")
  end

end
