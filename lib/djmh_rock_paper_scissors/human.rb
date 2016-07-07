module DjmhRockPaperScissors
  class Human < Player
    def get_move
      prompt_user
      input=gets.chomp.downcase
      input if valid_move?(input)
    end

    def turn 
      super 
      puts "You chose #{@move}."
    end

    def prompt_user
      puts "Rock, paper, or scissors?"
    end

    private
    def valid_move?(move)
      moves=%w(rock paper scissors)
      moves.include?(move)
    end
  end
end