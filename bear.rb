class Bear
attr_reader :name, :type
def initialize(name, type)
  @name = name
  @type = type
  @stomach_contents = []
end

def contents
  @stomach_contents.length
end
def eat_fish(fish)
  @stomach_contents << fish
end
def bear_take_fish_from_river(river)
  for each in river.fish
    @stomach_contents << each
  end
  river.fish = []
end
end
