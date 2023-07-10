class Node
  attr_accessor :data, :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end

  def append_next_node(sound)
    @next_node = Node.new(sound)
  end
end