require '../level5/game_utils'
class Game
   attr_reader :name
  include GameUtils
  def initialize(name)
    @name = name
  end
end

game = Game.new("contra")
game.lend_to_friend(game.name,"Gregg")

#include became part of instance

puts Game.included_modules
puts "Methods of Class-> #{Game.methods}"
puts "Methods of instance-> #{Game.new("Contra").methods}"
