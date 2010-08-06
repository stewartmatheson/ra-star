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
  
  
  def test_horizontal_path
    map = Map.new(5,5)
    start_node = Node.new(1,5)
    target_node = Node.new(5,1)
    p = Path.new(map, start_node, target_node)
    assert_equal start_node, p.current_location, "The start node is not the current location before a step has been taken"
    4.times do |i|
      assert_equal Node.new(i + 2, 5), p.next_step, "Step number #{i + 1} was not taken correctly"
      p.move p.next_step
    end
  end
  
  
  def test_vertical_path
    map = Map.new(5,5)
    start_node = Node.new(1,1)
    target_node = Node.new(1,5)
    p = Path.new(map, start_node, target_node)
    assert_equal start_node, p.current_location, "The start node is not the current location before a step has been taken"
    4.times do |i|
      assert_equal Node.new(i + 2, 1), p.next_step, "Step number #{i + 1} was not taken correctly"
      p.move p.next_step
    end
  end
  
  
end