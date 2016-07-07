module DjmhRockPaperScissors
  class Player
    attr_reader :move, :player_number

    def initialize(player_number=nil)
      @move=""
      @player_number=player_number
    end

    def get_move
      
    end

    def turn
      @move=get_move
    end
  end
end