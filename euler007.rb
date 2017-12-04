# coding: utf-8
# Problem 7 「10001番目の素数」
def euler007
    count = 0
    num = 2
    loop do
        if(prime_numbers(num))
            count += 1
            break if count == 10001
        end
        num += 1
    end
    num
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