module RaStar  
  class Path    
    def initialize(start, target)
      @start = start
      @target = target
      @open_list = Array.new
      @open_list.push @start
    end
  end
end