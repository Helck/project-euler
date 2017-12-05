# coding: utf-8
# Problem 16 「各位の数字の和」
def euler016
    num = 2 ** 1000
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