require 'helper'

class TestPath < Test::Unit::TestCase
  
  
  def test_path_found
    target_node = Node.new(1,1)
    start_node = Node.new(1,1)
    map = Map.new(5,5)
    p = Path.new(map, start_node, target_node)
    assert p
  end
  
  
  def test_compelte
    some_node = Node.new(1,1)
    other_node = Node.new(1,2)
    map = Map.new(5,5)
    
    p = Path.new(map, some_node, some_node)
    assert p.complete?, "Path is not returning as complete like it should"
    
    p = Path.new(map, some_node, other_node)
    assert_equal false, p.complete?, "Path is retuning as complte when it should be returning as not complete"
  end
  
  
end