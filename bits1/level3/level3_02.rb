class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end


  def ==(game)
    name == game.name &&
        system == game.system &&
        year == game.year
  end
end


class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_game)
    for game in games
      return true if game == search_game
    end
    false
  end
end

g1 = Game.new("Matrix",{:year=>1999, :system=>"tv"})
g2 = Game.new("Matrix 2",{:year=>2001, :system=>"tv"})
g3 = Game.new("Matrix 3",{:year=>2004, :system=>"tv"})
g4 = Game.new("Lord of the rings",{:year=>2004, :system=>"tv"})

games = [g1,g2,g3]
library = Library.new(games)
puts library.has_game?(g4)
puts library.has_game?(g2)