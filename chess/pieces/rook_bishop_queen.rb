require_relative "piece.rb"
require_relative "slidable.rb"

class Rook < Piece 
  include slidable

  def move_dirs
    diretions = [
      [1,0],
      [-1,0],
      [0,1],
      [0,-1]
    ]
    moves(move_dirs)
  end
end