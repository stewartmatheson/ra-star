require 'helper'

class TestNode < Test::Unit::TestCase
  
  
  def test_node_found
    n = Node.new(1,1)
    assert 1, n.x
    assert 1, n.y
  end
  
  
  def test_node_equals_operator
    node = Node.new(1,2)
    different_node = Node.new(2,2)
    same_node = Node.new(1,2)
    
    assert node == same_node, "node is not returning equal"
    assert_equal false, node == different_node, "node is not returning not equal"
  end


end