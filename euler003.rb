# coding: utf-8
#Problem 3 「最大の素因数」
require 'prime'

def euler003
    max = 0
    m = 600851475143
    num = m
    x = 2 
    while x <= num do
        if(m % x == 0)
            max = x if(Prime.prime?(x) && x > max)
            current_num = m / x
            max = x if(Prime.prime?(current_num) && x > max)
            num = current_num
        end
        x += 1
    end
    max
end