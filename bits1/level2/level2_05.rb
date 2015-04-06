#Class
class Game
  attr_accessor :name,:system, :year
  def initialize(name, options={})
    @name = name
    @system = options[:system]
    @year = options[:year]
  end
end

game = Game.new("Mario")
puts "game name => #{game.name}, system=> #{game.system}, year=> #{game.year}"

game = Game.new("God of War",{:year=>2010})
puts "game name => #{game.name}, system=> #{game.system}, year=> #{game.year}"

game = Game.new("God of War",{:year=>2010, :system=>"ps2"})
puts "game name => #{game.name}, system=> #{game.system}, year=> #{game.year}"