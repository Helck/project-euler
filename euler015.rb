# coding: utf-8
# Problem 15 「格子経路」


def euler015
    num = [1]
    (1..20).each do |x|
        (x + 1).times do |y|
            next if y == 0
            if y == x
                sum = 0
                num.each do |z|
                    sum += z
                end
                num[x] = sum
            else
                num[y] = num[y] + num[y-1] 
            end
        end
    end
    count = 0
    num.each do |n|
        count += n
    end
    count
end