class TowersOfHanoi
  attr_accessor :towers

  def initialize
    @towers = towers
    @towers = [[3, 2, 1],[],[]]
  end

  def play
    p @towers
    until won?
      puts "Which tower would you like to move a disc from?"
      move_from = gets.chomp.to_i
      puts "Which tower would you like to move it to?"
      move_to = gets.chomp.to_i

      self.move(move_from, move_to)
      p towers
    end
    puts "YOU WON!!"
  end


  def move(move_from, move_to)
    if valid_move?(move_from, move_to)
       transit_disc = towers[move_from].pop
       towers[move_to].push(transit_disc)
    else
      p "False move. Retry"
      return false
    end
  end

  def valid_move?(move_from, move_to)
    if towers[move_from].empty?
      return false
    elsif towers[move_to].empty?
      return true
    elsif towers[move_from][-1] > towers[move_to][-1]
      return false
    else
      return true
    end
  end

  def won?
    if towers[0].empty? && towers[2].empty? && (towers[1].length == 3)
      return true
    elsif towers[0].empty? && towers[1].empty? && (towers[2].length == 3)
      return true
    else
      return false
    end
  end

end


if __FILE__ == $PROGRAM_NAME
  tow = TowersOfHanoi.new
  tow.play
end
