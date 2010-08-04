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


  def test_heuristic_calculator
    n1 = Node.new(1,1)
    n2 = Node.new(2,2)
    n3 = Node.new(1,8)
    
    assert_equal 200, n1.heuristic(n2)
    assert_equal 700, n1.heuristic(n3)
  end
  
  
end