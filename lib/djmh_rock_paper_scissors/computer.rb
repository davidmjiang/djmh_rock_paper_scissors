module DjmhRockPaperScissors
  class Computer < Player

    def get_move
      arr = %w[rock paper scissors]
      arr.sample      
    end

    def print_choice
      puts "Player #{@player_number} chose #{@move}"
    end

    def turn
      super
      print_choice
    end

  end
end