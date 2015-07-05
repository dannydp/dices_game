require_relative 'core_ext/object'
require_relative 'dices/game'
require_relative 'player'
module Dices

  RELEASE = "1"
  MIDDLE = "0"
  MONOR = "0"

  def self.version
    [RELEASE, MIDDLE, MONOR].join('.')
  end
end

game = Dices::Game.new
player = Player.new 'Jack'

game.login! player
player.show_credit
game.run 10, 200
player.show_credit
game.run 7, 100
player.show_credit
game.logout! player