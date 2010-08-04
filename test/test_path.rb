require 'helper'

class TestPath < Test::Unit::TestCase
  def test_path_found
    target_node = Node.new
    start_node = Node.new
    p = Path.new(start_node, target_node)
    assert p
  end
end