module RaStar  
  class Path    
    
    
    def initialize(map, start, target)
      @start_location = start
      @current_location = @start_location
      @target_location = target
      @map = map
      @open_list = Array.new
      @closed_list = Array.new
      @closed_list.push @start_location
      step
    end
    
    
    def step
      return if complete?
      @open_list.concat @map.adjacent_nodes(@current_location)
    end
    
    
    def complete?
      @current_location == @target_location
    end
    
    
  end
end