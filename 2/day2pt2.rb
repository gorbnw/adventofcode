
def process_input(file_name)
  input = File.read(file_name).split("\n")
  input.map!{|row| row.split("\t")}
  input.each do |row|
    row.map!{|num| num.to_i }
  end
end

def find_row_even_divisor(row)
  i = 0
  while i < row.length
    j = i + 1
    while j < row.length
      if row[i] % row[j] == 0
        return row[i] / row[j]
      elsif row[j] % row[i] == 0
        return row[j] / row[i]
      end
        j += 1
    end
    i += 1
  end
end

def solve_checksum(file_name)
  input = process_input(file_name)
  sum = 0
  input.each{|row| sum += find_row_even_divisor(row)}
  sum
end

p solve_checksum("2.txt")
