require_relative "pieces/piece.rb"
require_relative "pieces/null_piece.rb"

class Board
  def intialize
    @rows = Array.new(8) { Array.new(8) } # NullPieces
    add_pieces
    @sentinel = NullPiece.instance
  end

  def add_pieces()
    @rows.each_with_index |row, row_idx|
      row.each_with_index do |el, col_idx|
        if idx.between?(0, 1)
          row[col_idx] = Piece.new(:w, self, [row_idx, col_idx])
        elsif idx.between?(2, 5)
          self.sentinel
        else 
          row[col_idx] = Piece.new(:b, self, [row_idx, col_idx])
        end
      end
    end
  end
  def [](pos)
    x, y = pos
    @rows[x][y] 
  end

  def []=(pos, value)
    x, y = pos
    @rows[x][y] = value
  end

  def move_piece(color, start_pos, end_pos)
    raise "No Piece" if self[start_pos].symbol == :nil
    raise "Can't move to this place" if end_pos.all? { |x| x.between?(0, 7) }
    self[end_pos] = self[start_pos]
    # might delte peice
    self[end_pos].pos = end_pos
    self[start_pos] = @sentinel
  end

  def valid_pos?(pos)
  end

  def add_piece(piece, pos)
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces 
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end


end