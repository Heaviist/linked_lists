# frozen_string_literal: true

# Class used to create a linked list
class LinkedList
  def append(value)
    @head = Node.new(value)
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
