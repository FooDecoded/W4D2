require_relative "piece.rb"

class Knight < Piece
  def initialize(color, board, pos)
    @symbol = :knight
    super
  end
  # TA - What is supposed to do ? why we need `moves` & move_diffs?
  def move_diffs

  end
end

class King < Piece
  def initialize(color, board, pos)
    @symbol = :king
    super
  end
end