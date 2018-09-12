require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < Minitest::Test
  def setup

    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("David")
    @fish3 = Fish.new("Bubbles")
    @fish4 = Fish.new("Chippy")

  end
def test_bear_name
  assert_equal("Yogi", @bear.name)
end
def test_bear_type
  assert_equal("Grizzly", @bear.type)
end

def test_stomach_contents
assert_equal(0, @bear.contents())
end

def test_bear_eats_fish
  @bear.eat_fish(@fish1)
  assert_equal(1, @bear.contents)
end

def test_bear_take_fish_from_river_river_loses_fish
  @river =  River.new("Amazon")
  @river.add_fish_to_river(@fish1)
  @river.add_fish_to_river(@fish2)
  @bear.bear_take_fish_from_river(@river)
  assert_equal(0, @river1.fish_in_river)
  assert_equal(2, @bear.contents)
end
end
