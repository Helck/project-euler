# coding: utf-8
# Problem 23 「非過剰数和」
def euler023
    abundant = Array.new
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

    (1..28123).each do |m|
        x = 0
        flag = true
        while m >= abundant[x]do
            n = m - abundant[x]
            y = 0
            while n >= abundant[y]do
                flag = false if n == abundant[y]
                y += 1
            end
            x += 1
            break if flag == false
        end
        sum += m if flag == true
    end
    sum
end
