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
        @player_1=Human.new(1)
        @player_2=Computer.new(2)
      elsif num_players == "2"
        @player_1=Human.new(1)
        @player_2=Human.new(2)
      end
    end

    def play
      @player_1.turn
      @player_2.turn
      compare(@player_1.move,@player_2.move)
    end


    def compare(player_1_move,player_2_move)
      if KEY[player_1_move]==player_2_move
        victory_message(@player_1)
      elsif KEY[player_2_move]==player_1_move
        victory_message(@player_2)
      else
        tie_message
      end
    end

    def victory_message(player)
      puts "Player #{player.player_number} wins!"
    end

    def tie_message
      puts "It's a tie!"
    end

  end
end