def process_input(file_name)
  input = File.read(file_name).split("\n")
  input.map!{|row| row.split(" ")}
  input
end

def count_invalid(file_name)
  input = process_input(file_name)
  sum = 0
  input.each_with_index do |row, i|
    if row.uniq.length == row.length
      sum += 1
    end
  end
  sum
end

p count_invalid("4.txt")
