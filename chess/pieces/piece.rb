class Piece
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end
  def to_s
    @color.to_s
  end

  def empty? 
      self.color == :nil ? true : false
  end

  def valid_moves
  end

  def pos=(val)
    self.pos = val
  end

  def symbol
    self.color
  end

  private
  def move_into_check?
    #check if puts king into check
  end
end

