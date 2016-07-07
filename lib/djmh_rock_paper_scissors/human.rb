module DjmhRockPaperScissors
  class Human < Player
    def get_move
      input=gets.chomp.downcase
      input if valid_move?(input)
    end

    private
    def valid_move?(move)
      moves=%w(rock paper scissors)
      moves.include?(move)
    end
  end
end