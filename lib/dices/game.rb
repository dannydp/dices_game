require_relative 'auth'
require_relative 'data_manager'
require_relative 'dice'

module Dices
  class Game

    include DataManager
    include Auth
    def initialize
      @players = []
      @dice1 = Dice.new(6)
      @dice2 = Dice.new(6)
    end

    def run bet, stake = 100
      p "#{bet}"
    end

  end
end