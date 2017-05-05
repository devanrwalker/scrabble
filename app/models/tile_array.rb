Full_bag = %w(e e e e e e e e e e e e a a a a a a a a a i i i i i i i i i o o o o o o o o n n n n n n r r r r r r t t t t t t l l l l s s s s u u u u d d d d g g g b b c c m m p p f f h h v v w w y y k q z j x - -)




@bag = []
@player_bag = []

def fill_bag
  @bag = Full_bag.shuffle
end


def collect_tiles 
  7.times do 
    @player_bag << @bag.pop
  end
end

fill_bag
collect_tiles
p @player_bag
p @bag.length