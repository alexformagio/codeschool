require_relative '../level3/game'
module GameUtils
  def self.lend_to_friend(game, friend_email)
    puts "Hello #{friend_email} I'm lending to you the game #{game} that's great"
  end
end
game = Game.new("Contra")
GameUtils.lend_to_friend(game, "gregg@codeschool.com")
