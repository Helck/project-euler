# coding: utf-8
# Problem 10 「素数の和」
require 'prime'
def euler010
    sum = 0
    Prime.each(2000000) do |x|
        sum += x
    end
    sum
end