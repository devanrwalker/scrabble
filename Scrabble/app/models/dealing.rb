#ask for players
#random 7 tiles to each
# def dealing
  puts "How many players today (Max of 4)"


  def random
    @mynumber = []
    7.times do
      @mynumber << rand(1..100)
    end
    return @mynumber
  end

  loop do
    @players = gets.chomp.to_i
    if @players <= 1
      puts "You need more than one player"
    elsif @players <= 4
      puts "Let's begin."
      break
    else
      puts "Please pick a number below 4"
    end
    puts @players
  end

  @player1 = []
  @player2 = []
  @player3 = []
  @player4 = []

  if @players == 4
    @player1 = random
    @player2 = random
    @player3 = random

    @player4 = random
  elsif @players == 3
    @player1 = random
    @player2 = random
    @player3 = random
  else
    @player1 = random
    @player2 = random
  end

  puts "Player 1's Hand"
  print @player1
  puts ""
  puts "Player 2's Hand"
  print @player2
  puts ""
  puts "Player 3's Hand"
  print @player3
  puts ""
  puts "Player 4's Hand"
  print @player4

  # puts @mynumber


# end
