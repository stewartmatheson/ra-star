require 'helper'
include RaStar

class DebugDisplay
  
  
  def initialize(map)
    @map = map
    @configuration = { :node_height => 6, :node_width => 25 }
  end
  
  
  def display_map
    line_output = ""
    (@map.height * @configuration[:node_height]).times do |i|
      (@map.width * @configuration[:node_width]).times do |j|
        line_output.concat calculate_output(j, i)
      end
      line_output.concat "\n"
    end
    puts line_output
  end
  
  
  private
  def calculate_output(x, y)
    if(x == 0 || x == (@map.width * @configuration[:node_width]) -1)
      return "|"
    elsif(y == 0 || y == (@map.height * @configuration[:node_height]) -1)
      return "-"
    elsif(y % @configuration[:node_height] == 0 && x %  @configuration[:node_width] == 0)
      return "+"
    elsif(y % @configuration[:node_height] == 0)
      return "-"
    elsif(x %  @configuration[:node_width] == 0)
      return "|"
    end
    " "
  end
  
  
end

map = Map.new(5,5)
dd = DebugDisplay.new(map)
dd.display_map