class Beer
  def initialize(initial_beer_count)
    @initial_beer_count = initial_beer_count
  end

  def initial_beer_count
    @initial_beer_count
  end

  def to_s
    "#{initial_beer_count}"
  end
end

class Song
  def ask_beer_count
    loop do 
      puts "Welcome, how many beers are we starting with? "
      @answer = gets.chomp.to_i
      break if @answer > 0
    end
  end

  def welcome_message
    puts "Ok, ready, set, go!"
    puts ""
  end

  def play
     beer = Beer.new(@answer)
     beer.initial_beer_count.downto(1) do |beer_count|
      case beer_count
        when 2
          puts "#{beer_count} bottles of beers on the wall" 
          puts "One fell down, pass it around, there's only #{beer_count - 1} bottle of beer left on the wall."
        when 1
          puts "#{beer_count} bottle of beers on the wall" 
          puts "One fell down, pass it around, there's no more bottles of beers left on the wall!"
        else
          puts "#{beer_count} bottles of beers on the wall"
          puts "One fell down, pass it around, #{beer_count - 1} bottles of beers left on the wall."
      end
      puts ""
    end
  end

  def perform
    ask_beer_count
    welcome_message
    play
  end
end

take1 = Song.new
take1.perform
