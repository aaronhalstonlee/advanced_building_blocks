#sort method, using bubble sort algorithm
def bubble_sort(arr)
    i = 0
    while i < arr.length
        j = 0
        while j+1 < arr.length
            if (arr[j] > arr[j+1])
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
            j += 1
        end  
        i += 1
    end
    arr
end

# rewrite sort method to take block
def bubble_sort_by(arr)
    i = 0
    while i < arr.length
        j = 0
        while j+1 < arr.length
            if yield(arr[j], arr[j+1]) > 0
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
            j += 1
        end  
        i += 1
    end
    puts arr
end


# call methods
puts bubble_sort([1,3,5,4,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length <=> right.length
end

bubble_sort_by([1,3,5,7,6,4]) do |left, right|
    left <=> right
end