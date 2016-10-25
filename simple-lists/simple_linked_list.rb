class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def next
    self.next_node
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
    (i-1).times do
      if current.next == nil
        return nil
      else
        current = current.next
      end
    end
    old_next_node = current.next
    current.next_node = Node.new(data, old_next_node)
  end

  def unshift
  end

  def push
  end

end
