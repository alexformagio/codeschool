#splat operator
#deal with the arguments as an array
def describe_favorites(*games)
  games.each{|game| puts "#{game} is one of my favorite games."}
end
describe_favorites('Mario', 'Contra', 'Metroid')
