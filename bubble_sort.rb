def bubble_sort(arr)
  length = arr.length

  begin
    for i in 1..length - 1
      a, b = arr[i - 1], arr[i]
      if a > b
        arr[i - 1] = b
        arr[i] = a
      end
    end
    length -= 1
  end until length == 0
  p arr
end

def bubble_sort_by(arr)
  length = arr.length

  begin 
    for i in 1..length - 1
      a, b = arr[i - 1], arr[i]
      if yield(a, b) < 0
        arr[i - 1] = b
        arr[i] = a
      end
    end
    length -= 1
  end
  p arr
end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  right.length - left.length
end