#diff was dropped off since version 4.0 of rails

require 'minitest/autorun'

class TestHash < MiniTest::Test
  def difference_between(player1, player2)
     assert_equal(player1,player2,"message teste")
  end
end

mario_favorite = {
    sports: "Mario Sports Mix",
    action: "Super Mario World"
}

luigi_favorite = {
    sports: "Golf",
    action: "Super Mario World"
}

t = TestHash.new("teste")
puts t.difference_between(mario_favorite, mario_favorite)
puts t.difference_between(mario_favorite, luigi_favorite)