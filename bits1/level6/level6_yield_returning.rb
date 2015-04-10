require '../level3/game'

class Library
  attr_accessor :games

  def initialize(games = [])
    self.games = games
  end

  def list
    games.each do |game|
      puts yield(game)
    end
  end
end

GAMES = [
    Game.new('Contra',{:year=> 1987, :system=> 'NES'}),
    Game.new('Civilization',{ year: 1991, system: 'PC'}),
    Game.new('The Legend of Zelda',{ year: 1986, system: 'NES'}),
    Game.new('Mega Man X2', {year: 1995, system: 'SNES'}),
    Game.new('Super Metroid', {year: 1994, system: 'SNES'}),
    Game.new('Sim City 2000', {year: 1993, system: 'PC'}),
    Game.new('Starcraft', {year: 1998, system: 'PC'})
]

library = Library.new(GAMES)
library.list { |game| "#{game.name} (#{game.system}) - #{game.year}" }

