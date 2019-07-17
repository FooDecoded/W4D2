require_relative "piece.rb"
require "singleton"
class NullPiece < Piece
  include Singleton

  def symbol
    :nil
  end
  ### TA - How the moves work for nill?
  def moves 
    []
  end
end