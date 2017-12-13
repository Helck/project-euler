# coding: utf-8
# Problem 12 「高度整除三角数」
require 'prime'
def euler012
    num = 0
    n = 1
    div_num = 0
    while div_num < 500 do
        num += n
        gg = Prime.prime_division(num)
        div_num = gg.reduce(1){|m,kv| m *= kv[1] + 1 }
        n += 1
    end
    num
end