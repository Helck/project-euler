# coding: utf-8
# Problem 24 「辞書式順列」
def euler024
    num = 1000000
    sum = 0
    num_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    9.downto(1) do |m|
        x = 1
        1.upto(m) do |n|
            x *= n
        end
        y = (num / x).to_i
        if num % x != 0
            sum = sum * 10 + num_array[y]
            num_array.delete_at(y)
            num = num % x
        else
            y -= 1
            sum = sum * 10 + num_array[y]
            num_array.delete_at(y)
            (num_array.length - 1).downto(0) do |m|
                sum = sum * 10 + num_array[m]
            end
            break
        end
    end
    sum
end