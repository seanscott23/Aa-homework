  class Stack
    def initialize(ivar)
      # create ivar to store stack here!
      ivar = [1,2,3]
    end

    def push(el)
      # adds an element to the stack
        ivar.push(ele)
    end

    def pop(ele)
      # removes one element from the stack
      ivar.pop(ele)
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
     return ivar[-1]
    end
  end