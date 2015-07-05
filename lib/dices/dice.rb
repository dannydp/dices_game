module Dices
  class Dice

    def initialize sides
      @sides = sides
    end

    def roll
      rand(1..@slides)
    end

  end
end
