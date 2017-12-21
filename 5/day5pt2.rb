def process_input(file_name)
  input = File.read(file_name).split("\n")
  input.map!{|num| num.to_i}
  input
end

def step_through(file_name)
  stack = process_input(file_name)
  count = 0
  i = 0
  while i < stack.length && i >= 0
    count += 1
    temp = i
    i += stack[i]
    if stack[temp] >= 3
      stack[temp] -= 1
    else
      stack[temp] += 1
    end
  end
  count
end

p step_through("5.txt")
