def my_min_1(list)
    start_time = Time.now
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
    end_time = Time.now
    total_time = end_time - start_time
    puts total_time
    min
end


def my_min_2(list)
    start_time = Time.now
    min = nil
    list.each do |num|
        if min.nil?
            min = num
        else
            min = num if num < min
        end
    end
    end_time = Time.now
    total_time = end_time - start_time
    puts total_time
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# my_min_1(list)  # =>  -5
# my_min_2(list)

# how to measure time for a method

def largest_contiguous_subsum(list)
    sub = []
    list.each_index do |idx1|
        (idx1..list.length-1).each do |idx2|
            sub << list[idx1..idx2]
        end
    end
    sub.map {|sum| sum.inject(:+)}.max
end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list)

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list)

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list)

# def largest_contiguous_subsum_2(list)
#     largest_sum = list.first
#     current_sum = list.first
#     list.each_index do |idx|
#         current_sum += list[idx]
#         largest_sum = current_sum + largest_sum
        
#         # largest_sum < current_sum ? largest_sum = current_sum : largest_sum = largest_sum
#     end
#     return largest_sum

# end

def largest_contiguous_subsum_2(list)
    largest_sum = list.first
    current_sum = list.first

    (0..list.length - 2).each do |idx|
        current_sum += list[idx]
        largest_sum = current_sum if current_sum > largest_sum
    end
    largest_sum

end

list = [-5, -1, -3]
p largest_contiguous_subsum_2(list)

