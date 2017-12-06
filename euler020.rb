# coding: utf-8
# Problem 20 「各位の数字の和 2」
def euler020
    num = 1
    (1..100).each do |x|
        num *= x
    end
    ccc = Array.new
    aaa = num.to_s
    bbb = aaa.each_char do |b|
        ccc << b.to_i
    end
    sum = 0
    ccc.each do |x|
        sum += x
    end
    sum
end