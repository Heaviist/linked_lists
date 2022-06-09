# frozen_string_literal: true

# Class used to create a linked list
class LinkedList
  attr_accessor :head

  def empty?
    @head.nil?
  end

  def append(value)
    if empty?
      @head = Node.new(value)
    else
      current_node = @head
      new_node = Node.new(value)
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node.next_node = new_node
    end
  end

  def prepend(value)
    if empty?
      @head = Node.new(value)
    else
      current_node = @head
      @head = Node.new(value)
      @head.next_node = current_node
    end
  end

  def size(size = 0)
    return size if empty?

    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
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
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

  attr_accessor :value, :next_node
end
