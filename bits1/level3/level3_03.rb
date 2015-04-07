#instance method
require_relative('game.rb')
require_relative('library.rb')

g1 = Game.new("Matrix",{:year=>1999, :system=>"tv"})
g2 = Game.new("Matrix 2",{:year=>2001, :system=>"tv"})
g3 = Game.new("Matrix 3",{:year=>2004, :system=>"tv"})
g4 = Game.new("Lord of the rings",{:year=>2004, :system=>"tv"})

games = [g1,g2,g3]
library = Library.new(games)
puts library.has_game?(g4)
puts library.has_game?(g2)
library.add_game(g4)
puts library.has_game?(g4)