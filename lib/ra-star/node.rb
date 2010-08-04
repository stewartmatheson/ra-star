module RaStar
  class Node
    attr_accessor :x, :y, :passable
    
    
    def initialize(x, y, passable = true)
      @x = x
      @y = y
      @passable = passable
    end
    
    
    def ==(n)
      n.x == x && n.y == y
    end
    
  end
end