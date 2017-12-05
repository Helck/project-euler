# coding: utf-8
# Problem 12 「高度整除三角数」

def euler012
    num = 0
    n = 1
    loop do
        num += n
        count = 0
        x = num
        y = 1
        while y < x do
            if num % y == 0
                if ((num / y) == y)
                    count += 1
                else
                    count += 2
                end
                x = num / y
            end
            y += 1
        end 
        break if count >= 500
        n += 1
    end
    num
end