class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(sound)
    new_node = Node.new(sound)
    if @head.nil?
      @head = new_node
    else
      current = @head
      until current == nil
        previous = current
        current = current.next_node
      end
      previous.next_node = new_node
    end
  end

  def count
    iterator = 0
    current = @head
    until current == nil
      current = current.next_node
      iterator += 1
    end
    iterator
  end

  def to_string
    the_string = ""
    current = @head
    until current == nil
      the_string << current.data << " "
      current = current.next_node
    end
    the_string.chomp(' ')
  end

  def prepend(sound)
    new_node = Node.new(sound)
    if @head.nil?
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def insert(index, sound)
    new_node = Node.new(sound)
    current_index = 0
    current = @head
    until current_index == index
      previous = current
      current = current.next_node
      current_index += 1
    end
    previous.next_node = new_node
    new_node.next_node = current
  end

  def find(index, quantity)
    current_index = 0
    iterator = 0
    current = @head
    the_string = ""
    until current_index == index
      previous = current
      current = current.next_node
      current_index += 1
    end
    until iterator == quantity || current.next_node == nil
      the_string << current.data << " "
      current = current.next_node
      iterator += 1
    end
    the_string.chomp(" ")
  end

  def include?(sound)
    current = @head
    until current.data == sound
      previous = current
      current = current.next_node
      break if current == nil
    end
    current == nil ? false : true
  end

  def pop
    current = @head
    prior_previous = nil
    previous = nil
    until current == nil
      prior_previous = previous
      previous = current
      current = current.next_node
    end
    prior_previous.next_node = nil
    previous.data
  end
end