class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = head
    @head = new_node # Update head
  end

  def append(value)
    new_node = Node.new(value)

    if head.nil?
      @head = new_node # Where we have an empty list
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = new_node
    end
  end

  class Node
    attr_accessor :value, :next_node

    def initialize(value)
      @value = value
      @next_node = nil
    end
  end

  private_constant :Node # Keeps Node implementation within LinkedList
end
