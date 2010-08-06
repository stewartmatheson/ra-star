module RaStar  
  class Path    
    attr_accessor :current_location
    
    
    def initialize(map, start, target)
      @start_location = start
      @current_location = @start_location
      @target_location = target
      @map = map
      @open_list = Array.new
      @closed_list = Array.new
      @closed_list.push @start_location
    end
    
    
    def next_step
      return if complete?
      @open_list.concat @map.adjacent_nodes(@current_location)
      low_node = @open_list.shift 
      @open_list.each do |n|
        low_node = n if low_node.score(@current_location) > n.score(@current_location)
      end
      low_node
    end
    
    
    def move(node)
      @open_list.clear
      @closed_list.push node
      @current_location = node
    end
    
    
    def complete?
      @current_location == @target_location
    end
    
    
  end
end