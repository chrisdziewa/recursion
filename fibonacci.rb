def fibs(n)
    prev = 0
    current = 1
    result = []
    n.times do
        fib = prev + current
        prev, current = current, fib
        result.push(fib)
    end
    result
end

# Recursive version
def fibs_rec(n, result = [], prev=0, current = 1)
   return n == 0 ? result : fibs_rec(n - 1, result.push(prev + current),  current, (prev + current) )
end

puts fibs_rec(10).to_s