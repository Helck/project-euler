# coding: utf-8
# Problem 21 「友愛数」
def euler021
    sum = 0
    (2..9999).each do |m|
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
        if n != 1 && n < 10000 && n != m
            a = 2
            b = n
            c = 0
            while a < b do
                if n % a == 0
                    c += a + (n / a)
                    c -= a if a == (n / a)
                end
                b = n / a
                a += 1
            end
            c += 1
            if c == m 
                sum += m 
            end
        end
    end
    sum
end