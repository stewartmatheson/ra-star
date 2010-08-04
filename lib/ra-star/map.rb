module RaStar
  # The map class represents the given map for the A* path calculations.  Maps consist of a number of nodes that get created based on the map size passed to the constructor. 
  class Map
    attr_accessor :nodes
    
    # Creates a new map based on the passed with and height.
    def initialize(width, height)
      @nodes = Array.new
      width.times do |w|
        height.times do |h|
          @nodes.push Node.new(h + 1, w + 1)
        end
      end
    end
    
    # Returns an array of the nodes that are directely adjacent to to passed node. Nil nodes are not passed if the node is on the edge of the map.
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
    
    # Returns the node at the passed X and Y co-ordinate. Returns nil if the co-ordinates are out of range of the map.
    def node_at(x,y)
      search_node = Node.new(x,y)
      @nodes.detect { |n| search_node == n }
    end
    
    
  end
end