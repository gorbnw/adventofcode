def solve_captcha(captcha)
  sum = 0
  i = 0
  while i < captcha.length
    if captcha[i] == captcha[i-(captcha.length/2)]
      sum += captcha[i]
    end
    i += 1
  end
  sum
end

digits = File.read("1.txt").chomp.split("").map{|x| x.to_i}
p solve_captcha(digits)
