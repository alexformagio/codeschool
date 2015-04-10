class Library
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def list
    games.each{|game| puts game.name}
  end
end
