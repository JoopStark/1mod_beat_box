class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end



  def append(sound)
    if @head
      @head.append_next_node(sound) 
    else
      @head = Node.new(sound)
    end
  end

  def count
    iterator = 0
    if @head != nil
      iterator += 1
    end
  end

  def to_string
    @head.to_string
  end































end