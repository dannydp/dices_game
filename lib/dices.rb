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
game.logout! player