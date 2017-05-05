#ask for players
#random 7 tiles to each
# def dealing

FULL_BAG = %w(e e e e e e e e e e e e a a a a a a a a a i i i i i i i i i o o o o o o o o n n n n n n r r r r r r t t t t t t l l l l s s s s u u u u d d d d g g g b b c c m m p p f f h h v v w w y y k q z j x - -)




@bag = []

def fill_bag
  @bag = FULL_BAG.shuffle
end

  puts "How many players today (Max of 4)"

  def collect_tiles 
    @player_bag = []
    7.times do 
      @player_bag << @bag.pop
    end
    return @player_bag
  end

  loop do
    @players = gets.chomp.to_i
    if @players <= 1
      puts "You need more than one player"
    elsif @players <= 4
      puts "Let's begin."
      fill_bag
      break
    else
      puts "Please pick a number below 4"
    end
    puts @players
  end

  @player1_hand = []
  @player2_hand = []
  @player3_hand = []
  @player4_hand = []

  if @players == 4
    @player1_hand = collect_tiles
    @player2_hand = collect_tiles
    @player3_hand = collect_tiles
    @player4_hand = collect_tiles
  elsif @players == 3
    @player1_hand = collect_tiles
    @player2_hand = collect_tiles
    @player3_hand = collect_tiles
  else
    @player1_hand = collect_tiles
    @player2_hand = collect_tiles
  end

  puts "Player 1's Hand"
  print @player1_hand
  puts ""
  puts "Player 2's Hand"
  print @player2_hand
  puts ""
  puts "Player 3's Hand"
  print @player3_hand
  puts ""
  puts "Player 4's Hand"
  print @player4_hand



# end

puts @bag.length
