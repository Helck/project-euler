# coding: utf-8
# Problem 10 「素数の和」
def euler010
    sum = 0
    (2..2000000).each do |x|
        sum += x if prime_numbers(x)
    end
    sum
end

def prime_numbers(num)
    return true if num == 2
    return false if num % 2 == 0
    x = (num ** 0.5).to_i
    i = 3
    while i <= x do
        if num % i == 0
            return false
        end
        i += 2
    end 
    return true
end