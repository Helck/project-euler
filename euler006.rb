# coding: utf-8
# Problem 6 「二乗和の差」
def euler006
    x = 0
    y = 0
    (1..100).each do |m|
        x += m
        y += m ** 2
    end
    ((x ** 2) - y).abs
end