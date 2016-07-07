module DjmhRockPaperScissors
  class Player
    attr_reader :move

    def initialize
      @move=""
    end

    def get_move
      
    end

    def turn
      @move=get_move
    end
  end
end