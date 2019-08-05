class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
      @data = LinkedListNode.new(value, @data)
    end

    def pop
      if @data then
        r = @data.value;
        @data = @data.next_node
      else
        r = nil
      end
      return r
    end

end


def print_list(stack)
  data = stack.data

  begin
    print "#{data.value} --> "
    data = data.next_node
  end while data
  print "nil\n"
  return
end

def reverse_list(stack)
    reverse_stack = Stack.new
    while stack.data
      reverse_stack.push(stack.pop);
    end

    return print_list(reverse_stack)
end

myStack = Stack.new
myStack.push(37)
myStack.push(99)
myStack.push(12)
myStack.push(544)
myStack.push(34)
myStack.push(87)
myStack.push(2)
print_list(myStack)
puts "-------"
reverse_list(myStack)