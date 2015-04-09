module GameUtils
  #def self.included(base)
  #  base.extend(ClassMethods)
  #end

    def lend_to_friend(game, friend_email)
      puts "Hello #{friend_email} I'm lending to you the game #{game} that's great"
    end

    def find_all_from_user(value)
      puts "That's all for #{value}"
    end



end