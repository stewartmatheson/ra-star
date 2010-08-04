require 'helper'

class TestNode < Test::Unit::TestCase
  def test_node_found
    n = Node.new
    assert_nil n.x
    assert_nil n.y
  end
end