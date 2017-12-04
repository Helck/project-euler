# coding: utf-8
# Problem 9 「特別なピタゴラス数」
def euler009
    x = 1
    y = 2
    z = 0
    loop do
        z = ((x ** 2) + (y ** 2)) ** 0.5
        if(z ** 2 == ((x ** 2) + (y ** 2)) && x + y + z == 1000)
            break
        else
            x += 1
            if(x == y)
                x = 1
                y += 1
            end
        end
    end
    x * y * z
end