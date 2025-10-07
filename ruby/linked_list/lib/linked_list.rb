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

  def to_s
    current = @head
    print_linked_list = ''

    until current.nil?
      print_linked_list << "( #{current.value} ) -> "
      current = current.next_node # Move to next_node
    end

    print_linked_list << 'nil'
    print_linked_list
  end

  def size
    count = 0
    current = @head

    until current.nil?
      count += 1
      current = current.next_node
    end
    count
  end

  def tail
    return nil if @head.nil?

    current = @head
    current = current.next_node until current.next_node.nil?
    current
  end

  def at(index)
    return nil if index.negative? # Check for negative indices

    current = @head
    count = 0

    until current.nil?
      return current if count == index

      current = current.next_node
      count += 1
    end

    nil # return nil if index is out of bounds
  end

  def pop
    return nil if @head.nil? # Empty list -> nothing to pop

    if @head.next_node.nil? # Only one element
      value = @head.value
      @head = nil
      return value
    end
    # For more that one element -> traverse to second-last node
    current = @head
    current = current.next_node until current.next_node.next_node.nil?

    value = current.next_node.value  # Save tail value
    current.next_node = nil          # Remove last node
    value
  end

  def contains?(value)
    current = @head
    until current.nil?
      return true if current.value == value

      current = current.next_node
    end
    false
  end

  def find(value)
    index = 0
    current = @head

    until current.nil?
      return index if current.value == value

      current = current.next_node
      index += 1
    end
    nil # If value is absent
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
