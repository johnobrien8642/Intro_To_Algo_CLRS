require 'byebug'

class InsertionSort
    attr_accessor :arr
    def initialize(arr)
      @arr = arr
    end
    
    def sort
      key = 1
      to_the_left = key - 1
      while key < self.arr.length
        if arr[key] < arr[to_the_left] 
          mover_key = key
          left_ele_moving_right = to_the_left
          until arr[mover_key] > arr[left_ele_moving_right] || left_ele_moving_right < 0
            arr[left_ele_moving_right], arr[mover_key] = 
            arr[mover_key], arr[left_ele_moving_right]
            mover_key -= 1 
            left_ele_moving_right -= 1
          end
        end
        key += 1
        to_the_left += 1
      end
      self.arr
    end
end
