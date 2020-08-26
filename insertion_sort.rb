

class InsertionSort
    attr_reader :arr
    def initialize(arr)
      @arr = arr
    end

    def sort
      j = 2
      while j < self.arr.length
        key = self.arr[j]
        i = j - 1
          while i > 0 && self.arr[i] > key
            self.arr[i] = self.arr[i + 1]
            i = i - 1
          end
      j += 1
      end
        self.arr
    end
end
