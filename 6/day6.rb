require 'set'

def process_input(file_name)
  File.read(file_name).chomp.split("\t").map(&:to_i)
end

def reallocate(array, start, quantity)
  array[start] = 0
  start += 1
  while quantity > 0
    array[start % array.length] += 1
    start += 1
    quantity -= 1
  end
  return array
end


def solve(file_name)
  input = process_input(file_name)
  look_up = Set.new
  look_up.add(input)
  steps = 0
  loop do
    steps += 1
    max = input.max
    start = input.find_index(max)
    reallocated = reallocate(input, start, max)
    return steps if look_up.include?(reallocated)
    look_up.add(reallocated)
  end
end

p solve("6.txt")
