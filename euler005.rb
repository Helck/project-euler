# coding: utf-8
# Problem 5 「最小の倍数」
def euler005
    count = Hash.new
    (2..20).each do |m|
        h = Hash.new
        num = m
        n = 2
        while num > 1 do
            if(num % n == 0)
                if h.has_key?("#{n}")
                    h["#{n}"] += 1
                else
                    h["#{n}"] = 1
                end
                num = num / n
                n = 2
            else
                n += 1
            end
        end
        h.each do |x, y|
            if count.has_key?("#{x}")
                count["#{x}"] = y if count["#{x}"] < y                    
            else
                count["#{x}"] = y
            end
        end
    end
    sum = 1
    count.each do |x, y|
        sum *= x.to_i ** y
    end
    sum
end