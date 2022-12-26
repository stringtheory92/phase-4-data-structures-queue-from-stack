require_relative './stack'

# your code here
class MyQueue
    attr_accessor :s1, :s2
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def peek
        while !s1.empty?
            s2.push(s1.pop) 
        end
        resp = s2.peek
        while !s2.empty?
            s1.push(s2.pop)
        end
        return resp
    end

    def add(value)
        self.s1.push(value)
    end

    def remove
        while !s1.empty?
                s2.push(s1.pop)
        end
        resp = s2.pop
        while !s2.empty?
            s1.push(s2.pop)
        end
        return resp
    end
end
