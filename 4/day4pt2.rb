def process_input(file_name)
  input = File.read(file_name).split("\n")
  input.map!{|row| row.split(" ")}
  input
end

def build_letter_count_hash(word)
  letter_counts = {}
  word = word.split("")
  word.each do |letter|
    if letter_counts[letter]
      letter_counts[letter] += 1
    else
      letter_counts[letter] = 1
    end
  end
  letter_counts
end

def check_row(row)
  row.map! do |word|
    build_letter_count_hash(word)
  end
  return true if row.uniq.length == row.length
  false
end

def count_invalid(file_name)
  input = process_input(file_name)
  sum = 0
  input.each do |row|
    if check_row(row)
      sum += 1
    end
  end
  sum
end

p count_invalid("4.txt")
