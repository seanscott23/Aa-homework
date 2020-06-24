class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @sequence_length = 1
    @seq = []
  end

  def play
     until @game_over == true 
      take_turn
      system("clear")
     end
      self.game_over_message
      self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if @game_over == false
      self.round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color 
      sleep .75
      system("clear")
      sleep .25
    end

  end

  def require_sequence
    puts "Repeat the sequence."
    queue.length = seq.length
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts 'Success! Get ready for next round!'
  end

  def game_over_message
    puts "Game over, you made it #{@sequence_length - 1} rounds, try again."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
