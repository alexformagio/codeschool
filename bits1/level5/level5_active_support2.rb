require 'active_support/concern'

module LibraryUtils

  extend ActiveSupport::Concern
  included do
    #this method is executed when class is created
    load_game_list
  end

  def add_game(game)
    puts "game #{game} added."
  end

  def remove_game(game)
    puts "game #{game} removed."
  end

  module ClassMethods
    def search_by_game_name(name)
      puts "search_by_game_name(#{name}) executed"
    end

    def load_game_list
      puts "Load game list"
    end
  end
end

class Atari
  include LibraryUtils
end

Atari.search_by_game_name ("Contra")
a = Atari.new
a.add_game("Contra")
a.remove_game("Contra")