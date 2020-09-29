# Implement your object-oriented solution here!
class EvenFibonacci
    attr_reader :num
    def initialize(num)
        @num = num
    end

    def sum
        tab = [1,2]
        val = 3
        while val < self.num
            tab.push(val)
            val = tab[-1] + tab[-2]
        end
        tab.reduce(0) do |sum, n| 
            if n%2 === 0
                sum + n
            else
                sum
            end
        end
    end
end