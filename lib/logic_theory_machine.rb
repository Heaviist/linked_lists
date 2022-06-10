# frozen_string_literal: true

# Class used to create a linked list
## Consider adding an @tail instance variable
class LinkedList
  attr_accessor :head

  def empty?
    @head.nil?
  end

  def append(value)
    return @head = Node.new(value) if empty?

    current_node = @head
    current_node = current_node.next until current_node.next.nil?
    current_node.next = Node.new(value)
  end

  def prepend(value)
    return @head = Node.new(value) if empty?

    current_node = @head
    @head = Node.new(value)
    @head.next = current_node
  end

  def size(size = 0)
    return 0 if empty?

    current_node = @head
    until current_node.next.nil?
      current_node = current_node.next
      size += 1
    end
    size + 1
  end

  def clear
    @head = nil
  end
end

# Class used for every node in the linked list
class Node
  def initialize(value)
    @value = value
    @next = nil
  end

  attr_accessor :value, :next
end
