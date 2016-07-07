module DjmhRockPaperScissors
  class Computer < Player
    def get_move
      arr = %w[rock paper scissors]
      arr.sample      
    end

    def print_choice
      puts "Computer chose #{@move}"
    end

    def get_move
      super
      print_choice
    end

  end
end