# coding: utf-8
# Problem 23 「非過剰数和」
def euler023
    abundant = Array.new
    abundant_sum = Hash.new
    sum = 0
    (1..28123).each do |m|
        x = 2
        y = m
        n = 0
        while x < y do
            if m % x == 0 
                n += x + (m / x)
                n -= x if x == (m / x)
            end
            y = m / x
            x += 1
        end
        n += 1
        abundant << m if n > m
    end
    (0..abundant.length - 1).each do |m|
        (m..abundant.length - 1).each do |n|
            if abundant[m] + abundant[n] <= 28123
                num = abundant[m] + abundant[n]
                abundant_sum["#{num}"] = 1
            end
        end
    end
    (1..28123).each do |m|
        sum += m unless abundant_sum.has_key?("#{m}")
    end
    sum
end