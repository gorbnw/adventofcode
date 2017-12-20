def process_input(file_name)
  input = File.read(file_name).split("\n")
  input.map!{|num| num.to_i}
  input
end

def step_through(file_name)
  stack = process_input(file_name)
  count = 0
  i = 0
  until i >= stack.length || i < 0
    count += 1
    temp = i
    i += stack[i]
    if stack[temp] >= 3
      stack[temp] -= 1
    else
      stack[temp] += 1
    end
    p i
  end
  p stack
  count
end

p step_through("5.txt")


def count_steps filename
        count = 0
        contents = []
        File.open(filename, "r") do |f|
            f.each_line do |line|
                contents.push(line.to_i)
            end
        end
        index = 0
        steps = 0
        while true
            temp = contents[index]
            # contents[index] = contents[index] + 1
            temp >= 3 ? contents[index] -= 1 : contents[index] += 1
            index += temp
            count += 1
            break if index >= contents.length || index < 0
        end
        return count
    end

p count_steps "5.txt"
