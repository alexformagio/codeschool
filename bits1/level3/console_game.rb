#inheritance3

require_relative 'game.rb'

class ConsoleGame < Game
  def to_s
    "#{super.to_s} - #{self.system}"
  end
end

puts Game.new("teste",{:year=>2000,:system=>"linux"})
puts ConsoleGame.new("teste",{:year=>2000,:system=>"linux"})