require_relative 'auth'
require_relative 'data_manager'
require_relative 'dice'

module Dices
  class Game

    include DataManager
    include Auth

    attr_reader :players

    def initialize
      @players = []
      @dice1 = Dice.new(6)
      @dice2 = Dice.new(6)
    end

    def run bet, stake = 100
      @bet = bet
      roll_dices

      if winner?
        count stake
        puts "You win!:)"
      else
        count stake
        puts "You lose! :("
      end
    end

    private

    def roll_dices
      puts "Roll the dice..."
      @result = @dice1.roll + @dice2.roll
      puts "Result: #{@result}"
    end

    def winner?
      @result == @bet
    end

    def count stake
      method = if winner?
                 stake*=2
                 :inc
               else
                 :dec
               end
      @current_player.send "#{method}_credit", stake
    end

  end
end