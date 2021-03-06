require '../level3/game'

class Library
  include Enumerable
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def each
    self.games.each { |game| yield(game) }
  end
end

GAMES = [
    Game.new('Contra', year: 1987, system: 'NES'),
    Game.new('Civilization', year: 1991, system: 'PC'),
    Game.new('The Legend of Zelda', year: 1986, system: 'NES'),
    Game.new('Mega Man X2', year: 1995, system: 'SNES'),
    Game.new('Super Metroid', year: 1994, system: 'SNES'),
    Game.new('Sim City 2000', year: 1993, system: 'PC'),
    Game.new('Starcraft', year: 1998, system: 'PC')
]

lb = Library.new(GAMES)
lb.each do |game|
  puts game.name
end

lb.sort_by{|game| puts game.name}
