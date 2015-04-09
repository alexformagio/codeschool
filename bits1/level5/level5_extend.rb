require '../level5/game_utils'

class Game
  extend GameUtils
end

Game.find_all_from_user("Greg")
Game.lend_to_friend(nil,"teste")

#extend became part of Class
puts Game.included_modules
puts "Methods of Class-> #{Game.methods}"
puts "Methods of instance-> #{Game.new.methods}"
