# coding: utf-8
# Problem 19 「日曜日の数え上げ」
def euler019
    day = 366 # 1901/01/01
    count = 0
    (1901..2000).each do |x|
        (1..12).each do |y|
            count += 1 if day % 7 == 0
            case 
                when y == 1 || y == 3 || y == 5 || y == 7 || y == 8 || y == 10 || y == 12
                    day += 31
                when y == 4 || y == 6 || y == 11
                    day += 30
                when y == 2
                    if (x % 4 == 0 && x % 100 != 0) || x % 400 == 0
                        day += 29
                    else
                        day += 28
                    end
            end
        end
    end
    count
end