# coding: utf-8
# Problem 17 「数字の文字数」
def euler017
    number_data = {"1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine", "10" => "ten", 
                   "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen", "20" => "twenty",
                   "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety",
                   "100" => "hundred", "1000" => "thousand", "&" => "and"}
    sum = 0
    (1..1000).each do |m|
        case
        when m <= 20
            sum += number_data["#{m}"].length
        when m > 20 && m < 100
            sum += number_data["#{(m / 10) * 10}"].length
            sum += number_data["#{m % 10}"].length if m % 10 != 0
        when m == 100
            sum += number_data["100"].length + number_data["#{m / 100}"].length
        when m > 100 && m <1000            
            if (m % 100) == 0
                sum += number_data["#{(m / 100)}"].length + number_data["100"].length
            elsif ((m % 100) <= 20) && (m % 100 != 0)
                sum += number_data["#{(m / 100)}"].length + number_data["100"].length + number_data["&"].length
                sum += number_data["#{(m % 100)}"].length
            elsif (m % 100) > 20 && (m % 100) < 100
                sum += number_data["#{(m / 100)}"].length + number_data["100"].length + number_data["&"].length
                sum += number_data["#{((m % 100) / 10) * 10}"].length
                sum += number_data["#{(m % 100) % 10}"].length if ((m % 100) % 10) != 0
            end
        else
            sum += number_data["#{m}"].length + number_data["#{m / 1000}"].length
        end        
    end
    sum
end