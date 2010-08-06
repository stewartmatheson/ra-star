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
    assert_operator n1.score(Node.new(2,2)), :<, n1.score(Node.new(8,8)), "Node score that is far away should be higher than the closer node."
    assert_operator n1.score(Node.new(2,2)), :>, n1.score(Node.new(1,1)), "Node score that is closer should be lower than the far node."
    assert_operator n1.score(Node.new(1,2)), :==, n1.score(Node.new(2,2)), "Node score that is closer should be lower than the far node."
  end
  
  
  def test_movement_calculation_cost
    n1 = Node.new(1,1)
    n2 = Node.new(2,2)
    assert_equal 1, n1.movement_cost(n2)
  end
  
  
end