# coding: utf-8
# Problem 22 「名前のスコア」

def insertion_sort(s)
    1.upto(s.length-1) do |m|
        if s[m] < s[m - 1]
            tmp = s[m]
            n = m - 1
            while (n >= 0) && tmp < s[n] do
                s[n + 1] = s[n]
                n -= 1
            end 
            s[n + 1] = tmp
        end
    end
end

def euler022
    data = File.open("names.txt")
    name_data = Array.new
    data.each_line do |line|
        name_data = line.delete('"').split(",")
    end 
    insertion_sort(name_data)
    sum = 0
    (0..(name_data.length - 1)).each do |m|
        sum_char = 0
        name_data[m].each_char do |n|
            sum_char += n.ord-64
        end
        sum += sum_char * (m + 1)
    end
    sum
end
