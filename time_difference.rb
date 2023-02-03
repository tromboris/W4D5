def my_min_1(list)
    min = nil
    (0..list.length - 1).each do |idx1|
        (0..list.length - 1).each do |idx2|
            if idx1 != idx2 
                if min.nil?
                    min = list[idx1]
                elsif list[idx1] < list[idx2] && list[idx1] < min 
                    min = list[idx1]
                elsif list[idx2] < min
                    min = list[idx2]
                end
            end
        end
    end
    min
end


def my_min_2(list)
    min = nil
    list.each do |num|
        if min.nil?
            min = num
        else
            min = num if num < min
        end
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min_1(list)  # =>  -5