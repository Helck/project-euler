# coding: utf-8
# Problem 25 「1000桁のフィボナッチ数」
def euler025
    num_array = [1, 1]
    loop do
        num_array[num_array.length] = num_array[num_array.length - 1] + num_array[num_array.length - 2]
        break if num_array[num_array.length - 1] / (10 ** 999) >= 1
    end
    num_array.length
end