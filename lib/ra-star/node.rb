module RaStar
  class Node
    attr_accessor :x, :y, :passable, :parent_node
    
    
    def initialize(x, y, passable = true)
      @x = x
      @y = y
      @passable = passable
    end
    
    
    def ==(n)
      n.x == x && n.y == y
    end
    
    # Evauleates the current node against the passed node using the manhattan method. Returns the score.
    def heuristic(n)
      (positive_inversion(n.x - x) + positive_inversion(n.y - y)) * 100
    end
    
    
    private
    def positive_inversion(i)
      i * -1 if i < 0
      i
    end
    
    
  end
end