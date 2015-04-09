require '../level3/game'
require '../level5/game_utils'
game = Game.new("Contra")
game.extend(GameUtils)
game.lend_to_friend(game,'Alexandre')
