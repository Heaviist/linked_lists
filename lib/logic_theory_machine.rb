# frozen_string_literal: true

# Class used to create a linked list
class LinkedList
  attr_reader :head

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

  # Returns the node at the given index. Index numbers start at 0.
  def at(index)
    return nil unless index.between?(0, size - 1)

    current_node = @head
    (0...index).each do
      current_node = current_node.next
    end
    current_node
  end

  # Removes and returns the last element from the list
  def pop
    return nil if empty?

    current_node = @head
    if current_node.next.nil?
      last_node = current_node
      clear
    else
      current_node = current_node.next until current_node.next.next.nil?
      last_node = current_node.next
      current_node.next = nil
    end
    last_node
  end

  def contains?(value)
    return false if empty?

    current_node = @head
    until current_node.nil?
      return true if current_node.value == value

      current_node = current_node.next
    end
    false
  end

  def find(value)
    return nil if empty?

    current_node = @head
    index = 0
    until current_node.nil?
      return index if current_node.value == value

      current_node = current_node.next
      index += 1
    end
  end

  def to_s
    current_node = @head
    until current_node.nil?
      print "-> ( #{current_node.value} ) "
      current_node = current_node.next
    end
  end

  # Inserts value at the given index (starting at 0).
  def insert_at(value, index)
    return append(value) if index >= size

    current_node = at(index - 1)
    inserted_node = Node.new(value)
    inserted_node.next = current_node.next
    current_node.next = inserted_node
  end

  def remove_at(index)
    list_size = size
    return nil if index >= list_size
    return pop if list_size == 1

    previous_node = at(index - 1)
    remove_node = at(index)
    previous_node.next = remove_node.next
  end

  def clear
    @head = nil
  end

  private

  def empty?
    @head.nil?
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
