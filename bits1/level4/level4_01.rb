require 'active_support/all'

def last_games(games, index)
  games.from(index)
end

def first_games(games, index)
  games.to(index)
end

games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
puts last_games(games, 1)
puts "-----------------"
puts first_games(games, 2)