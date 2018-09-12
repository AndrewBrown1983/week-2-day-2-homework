require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")
class RiverTest < Minitest::Test
  def setup

    @river1 = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("David")
    @fish3 = Fish.new("Bubbles")
    @fish4 = Fish.new("Chippy")
  end
def test_get_river_name
  assert_equal("Amazon", @river1.name)
end
def test_fish_in_river
  assert_equal(0, @river1.fish_in_river())
end

def test_add_fish_to_river
  @river1.add_fish_to_river(@fish3)
  assert_equal(1, @river1.fish_in_river)
end
def test_remove_fish_from_river
  @river1.add_fish_to_river(@fish1)
  @river1.remove_fish_from_river(@fish1)
  assert_equal(0, @river1.fish_in_river)
end
# def test_display_fish_in_river
#     @river1.add_fish_to_river(@fish1)
#     @river1.add_fish_to_river(@fish2)
#     @river1.display_fish_in_river
#   assert_equal(["Nemo", "David"], @river1.display_fish_in_river)
# end
end
