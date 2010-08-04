module RaStar  
  class Path    
    
    
    def initialize(map, start, target)
      @start_location = start
      @current_location = @start_location
      @open_list = Array.new
      @open_list.push @start_location
      @map = map
    end
    

  end
end