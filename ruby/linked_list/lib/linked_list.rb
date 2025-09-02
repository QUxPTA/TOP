class LinkedList
  def initialize(args); end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = head
    head = new_node
  end

  class Node
    def initialize(value)
      @value = value
      @next_node = nil
    end
  end
end
