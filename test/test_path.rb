require 'helper'

class TestPath < Test::Unit::TestCase
  
  
  def test_path_found
    target_node = Node.new(1,1)
    start_node = Node.new(1,1)
    map = Map.new(5,5)
    p = Path.new(map, start_node, target_node)
    assert p
  end
  
  
end