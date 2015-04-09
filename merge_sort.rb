# MERGE SORT

# Takes two ordered arrays and combines them in non-decreasing order
def merge(left, right)
    result = []

    while !left.empty? && !right.empty?
        if left.first <= right.first
            result << left.shift
        else
            result << right.shift
        end
    end
    # Append the leftovers
    result.concat(left).concat(right)
end

def merge_sort(array)
    return "No array provided" if array.length == 0
    return array if array.length == 1
    middle = array.length / 2
    first_half = array[0...middle]
    second_half = array[middle...array.length]
    # merge two ordered arrays
    merge(merge_sort(first_half), merge_sort(second_half))
end

puts merge_sort([6, 3, 73, 5311, 8, 4, 16, 1, 643, 231]).to_s

# => [1, 3, 4, 6, 8, 16, 73, 231, 643, 5311]