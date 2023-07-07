class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  # def location
  #   if @head.next_node.nil?
  #     :thehead
  #   elsif 



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































end