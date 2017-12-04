# coding: utf-8
#Problem 3 「最大の素因数」
def euler003
    max = 0
    m = 600851475143
    num = m
    x = 2 
    while x <= num do
        if(m % x == 0)
            max = x if(prime_numbers(x) && x > max)
            current_num = m / x
            max = x if(prime_numbers(current_num) && x > max)
            num = current_num
        end
        x += 1
    end
    max
end

def prime_numbers(num)
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