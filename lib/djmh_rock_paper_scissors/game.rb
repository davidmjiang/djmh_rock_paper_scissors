module DjmhRockPaperScissors
  class Game
    # is this going to be a one or two player game?
    # set up players as computer or human
    # ask the human player or players for input (choice)
    # get input from computer player if computer player
    # compare choices
    # print message depending on choice (tie? won?)

    def initialize 
      welcome_message

    end 

    def welcome_message 
      puts "Welcome to the game! How many players?"
      num_players = gets.chomp
    end

  end
end