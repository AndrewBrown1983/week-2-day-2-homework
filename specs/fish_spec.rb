require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
class FishTest < Minitest::Test
  def setup
    @fish = Fish.new("Avril")
  end

  def test_fish_name
    assert_equal("Avril", @fish.name)
  end
end
