require 'active_support/concern'

module LibraryUtils
 #ActiveSupport::Concern has ability to expose class methods from a module
  extend ActiveSupport::Concern

  def add_game(game)
  end

  def remove_game(game)
  end

  module ClassMethods
    def search_by_game_name(name)
      "passed here #{name}"
    end
  end
end

class AtariLibrary
  include LibraryUtils
end

puts AtariLibrary.search_by_game_name("Alexandre")
