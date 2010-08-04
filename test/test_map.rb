require 'helper'

class TestMap < Test::Unit::TestCase
  
  
  def test_create_square_map
    m = Map.new(10,10)
    assert_equal 100, m.nodes.length
  end
  
  
  def test_node_at
    m = Map.new(10, 10)
    n = Node.new(2,2)
    found_node = m.node_at(2,2)
    assert_equal n, found_node, "Node at not returning the correct node"
  end
  
  
  def test_get_correct_amount_of_ajainst_squares_no_blockers
    m = Map.new(10, 10)
    n = Node.new(2,2)
    n1 = Node.new(1,1)
    
    assert_equal 8, m.adjacent_nodes(n).length, "Nine squares form the middle of the map have not been returnd"
    
    assert_equal 3, m.adjacent_nodes(n1).length, "Three squares form the edge of the map have not been returnd"
  end
  
  
end