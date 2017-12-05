# coding: utf-8
# Problem 14 「最長のコラッツ数列」
def euler014
    max = 0
    max_num = 0
    (1..1000000).each do |m|
        n = m
        count = 0
        while n != 1 do
            if n % 2 == 0
                n = n / 2
                count += 1
            else
                n = (3 * n) + 1
                count += 1
            end
        end
        if count > max
            max = count
            max_num = m
        end
    end
    max_num
end