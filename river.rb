class River
attr_reader :name
def initialize(name)
  @name = name
  @fish = []

end

def fish_in_river
  return @fish.length
end

def add_fish_to_river(fish_name)
  @fish << fish_name
end
def remove_fish_from_river(fish_name)
  @fish.delete(fish_name)
end

# def display_fish_in_river()
#   return @river1.fish
# end
end
