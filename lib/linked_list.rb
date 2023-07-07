class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end



  def append(sound)
    @head = Node.new(sound)
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