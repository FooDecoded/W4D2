module Slidable
  def moves()
    start = self.pos
    directions = move_dirs().dup
    directions.map! do |direction|
      x1, y1 = start
      x2, y2 = direction
      end_pos = [x1+x2, y1+y2] 
    end
  end
end