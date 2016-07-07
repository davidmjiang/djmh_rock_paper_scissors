module DjmhRockPaperScissors
  class Game
    # is this going to be a one or two player game?
    # set up players as computer or human
    # ask the human player or players for input (choice)
    # get input from computer player if computer player
    # compare choices
    # print message depending on choice (tie? won?)

    #Human and Computer classes inherit from Player
    #both need their own get_move methods

    KEY = {
      "rock" => "scissors",
      "paper" => "rock",
      "scissors" => "paper"
    }
    #keys defeat values

    def initialize 
      welcome_message
      initialize_players
    end 

    def welcome_message 
      puts "Welcome to the game! How many players?"
    end

    def initialize_players
      num_players = gets.chomp
      if num_players=="1"
        @player_1=Human.new
        @player_2=Computer.new
      elsif num_players == "2"
        @player_1=Human.new
        @player_2=Human.new
      end
    end

    def play
      @player_1.turn
      @player_2.turn
    end

  end
end