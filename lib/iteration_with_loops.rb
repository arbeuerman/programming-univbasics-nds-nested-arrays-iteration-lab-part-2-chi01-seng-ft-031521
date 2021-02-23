require 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row_index = 0 
  lowest_temps = []
  binding.pry 
  while row_index < src.count do 
    element_index = 0 
    lowest_temp = 1000
    binding.pry 
    while element_index < src[row_index].count do
      if src[row_index][element_index] < lowest_temp
        lowest_temp = src[row_index][element_index]
      end 
    element_index += 1
    end 
    lowest_temps << lowest_temp
    binding.pry
    row_index += 1
  end
end

puts find_min_in_nested_arrays([
  [19, 21, 24, 26],
  [17, 18, 22, 26],
  [13, 15, 20, 12]
])