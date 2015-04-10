class Emulator
  def initialize(system)
    # Creates an emulator for the given system
  end

  def play(game)
    # Runs the given game in the emulator
  end

  def start(game)
    # Loads the given game but doesn't run it
  end

  def screenshot
    # Returns a screenshot of the currently loaded game
  end
end



class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  private
  def emulate
    begin
      emulator = Emulator.new(system)
      yield(emulator)
    rescue Exception => e
      puts "Emulator failed: #{e}"
    end
  end

  def play
    emulate do |emulator|
      emulator.play(self)
    end
  end

  def screenshot
    emulate do |emulator|
      emulator.start(self)
      emulator.screenshot
    end
  end
end
