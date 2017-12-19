
def process_input(file_name)
  input = File.read(file_name).split("\n")
  input.map!{|row| row.split("\t")}
  input.each do |row|
    row.map!{|num| num.to_i }
  end
end

def find_row_diff(row)
  row.max - row.min
end

def solve_checksum(file_name)
  input = process_input(file_name)
  sum = 0
  input.each{|row| sum += find_row_diff(row)}
  sum

end

p solve_checksum("2.txt")
