def addition(num1, num2)
  num1 + num2
end

def subtraction(num1, num2)
  num1 - num2
end

def multiplication(num1, num2)
  num1 * num2
end

def division(num1, num2)
  num1 / num2
end

def power(num1, num2)
  num1 ** num2
end

def sqrt(num1)
  Math.sqrt(num1)
end

def imperial
  print "Please enter your weight (pounds): "
  weight = gets.chomp
  weight = weight.to_f

  print "Please enter your height (inch): "
  height = gets.chomp
  height = height.to_f

  total = (weight * 703)/(height ** 2)
  print "Your BMI is #{total}"
end

def metric
  print "Please enter your weight (kg): "
  weight = gets.chomp
  weight = weight.to_f

  print "Please enter your height (m): "
  height = gets.chomp
  height = height.to_f

  total = weight/(height ** 2)
  print "Your BMI is #{total}"
end

def basic(num1, num2)
  print "What would you like to do? +,-,* or /:  "
  operator = gets.chomp

  if operator == "+"
    total = addition(num1, num2)
  elsif operator == "-"
    total = subtraction(num1, num2)
  elsif operator == "*"
     total = multiplication(num1, num2)
  elsif operator == "/"
    total = division(num1, num2)
  end

  print "#{num1} #{operator} #{num2} equals #{total}"

end

def advanced
  print "What would you like to do? a) power b) square root "
  choice = gets.chomp

  if choice == "a"
    print "Please enter your first number: "
    num1 = gets.chomp
    num1 = num1.to_f

    print "Please enter your second number: "
    num2 = gets.chomp
    num2 = num2.to_f

    total = power(num1, num2)
    print "#{num1} to the power of #{num2} is #{total}"

  elsif choice == "b"
    print "Please enter your number: "
    num1 = gets.chomp
    num1 = num1.to_f

    total = sqrt(num1)
    print "The square root of #{num1} is #{total}"
  end
end

def bmi
  print "Would you like to use the imperical or metric system? (i)mperical, (m)etric: "
  systems = gets.chomp

  if systems == "i"
    imperial
  elsif systems == "m"
    metric
  end
end

print "Which calculator would you like to use? (b)asic, (a)dvanced, bm(i): "
user_input = gets.chomp

if user_input == "b"
  print "Please enter your first number: "
  first_num = gets.chomp
  first_num = first_num.to_f

  print "Please enter your second number: "
  sec_num = gets.chomp
  sec_num = sec_num.to_f
  basic(first_num, sec_num)
elsif user_input == "a"
  advanced
elsif user_input == "i"
  bmi
end
