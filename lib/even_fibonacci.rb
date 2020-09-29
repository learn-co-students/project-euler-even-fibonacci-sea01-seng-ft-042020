# Implement your procedural solution here!
def even_fibonacci_sum(limit)
        tab = [1,2]
        val = 3
        while val < limit
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