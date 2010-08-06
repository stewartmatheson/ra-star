module RaStar
  class Node
    attr_accessor :x, :y, :passable, :parent_node
    
    
    def initialize(x, y, passable = true)
      @x = x
      @y = y
      @passable = passable
    end
    
    
    def ==(node)
      node.x == x && node.y == y
    end
    
    # Evauleates the current node against the passed node using the manhattan method. Returns the score.
    def heuristic(node)
      (positive_inversion(node.x - x) + positive_inversion(node.y - y)) * 100
    end
    
    # TODO: This method needs to be implmented with in a seperate interface. This goes for heuristic as well. Not sure about the best way to do this yet. Watch this space.
    def movement_cost(node)
      1
    end
    
    
    def score(node)
      heuristic(node) + movement_cost(node)
    end
    
    
    private
    def positive_inversion(i)
      i * -1 if i < 0
      i
    end
    
    
  end
end