module RaStar
  class Map
    attr_accessor :nodes
    
    
    def initialize(width, height)
      @nodes = Array.new
      width.times do |w|
        height.times do |h|
          @nodes.push Node.new(h + 1, w + 1)
        end
      end
    end
    
    
    def adjacent_nodes(n)
      nodes = Array.new
      3.times do |h|
        3.times do |w|
          adjacent_node = node_at(n.x + w - 1, n.y + h - 1)
          nodes.push adjacent_node if adjacent_node && adjacent_node != n
        end
      end
      nodes
    end
    
    
    def node_at(x,y)
      search_node = Node.new(x,y)
      @nodes.detect { |n| search_node == n }
    end
    
    
  end
end