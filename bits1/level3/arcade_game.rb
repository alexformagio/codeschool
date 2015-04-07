#inheritance 2
require_relative 'game.rb'

class ArcadeGame < Game
  attr_accessor :weight

  def initialize(name,options={})
    @weight = options[:weight]
    super(name,options)
  end
end