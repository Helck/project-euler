# coding: utf-8
# Problem 2 「偶数のフィボナッチ数」
def euler002
    num = [1, 2]
    sum = 2
    loop do
        x = num[num.length - 1] + num[num.length - 2]
        if x >= 4000000
            break
        end
        num << x
        if x % 2 == 0
            sum += x
        end        
    end
    sum
end