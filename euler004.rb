# coding: utf-8
# Problem 4 「最大の回文積」
def euler004
    x = 999
    y = 999
    min = 1
    max = 0
    while x >= min do
        num = x * y
        if(num.to_s == num.to_s.reverse)
            if(num > max)
                max = num
            end
            min = y
        end
        if(y == min)
            x -= 1
            y = 999
        end
        y -= 1
    end
    max
end