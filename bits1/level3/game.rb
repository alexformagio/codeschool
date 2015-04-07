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

  def to_s
    self.name
  end

  def description
    "#{self} was released in #{self.year}."
  end
end
