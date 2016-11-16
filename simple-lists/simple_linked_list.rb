class Node
  attr_accessor :data, :next

  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end

end


class LinkedList
  attr_accessor :head

  def initialize(data)
    @head = Node.new(data)
  end

  def index_at(i)
    current = head
    i.times do
      if current.next == nil
        return nil
      else
        current = current.next
      end
    end
    current.data
  end


  def insert_at_index(i, data)
    current = self.head
    (1..i - 1).each do |number|
      if current.next.nil? && (i != number)
        current.next = Node.new(nil, nil)
      end
      current = current.next
    end
    if current
      old_next = current.next
      current.next = Node.new(data, old_next)
    end
  end

  def unshift(data)
    first = self.head
    self.head = Node.new(data)
    self.head.next = first
  end

  def push(data)
    current = self.head
    until current.next == nil do
      current = current.next
    end
    current.next = Node.new(data)
  end
end
