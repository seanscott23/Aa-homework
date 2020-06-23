class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { []}
    place_stones
  end

  def place_stones
   @cups.each_with_index do |cup, idx|
    if idx == 6 || idx == 13
      4.times do 
      cup << :stone
      end
    end
   end
  end

  def valid_move?(start_pos)
    if start_pos < 1 || start_pos > 12
    raise "Invalid Starting Cup"
    if @cups[start_pos].empty? 
      raise 'starting cup is empty'
    end
  end

  def make_move(start_pos, current_player_name)
    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
