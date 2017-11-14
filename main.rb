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

def advanced(num1, num2)
  print "What would you like to do? a) power b) square root "
  choice = gets.chomp

  if choice == "a"
    total = power(num1, num2)
    print "#{num1} to the power of #{num2} is #{total}"
  elsif choice == "b"
    total = sqrt(num1)
    print "The square root of #{num1} is #{total}"
  end
end

print "Which calculator would you like to use? (b)asic, (a)dvanced: "
user_input = gets.chomp

print "Please enter your first number: "
first_num = gets.chomp
first_num = first_num.to_f

print "Please enter your second number: "
sec_num = gets.chomp
sec_num = sec_num.to_f

if user_input == "b"
  basic(first_num, sec_num)
elsif user_input == "a"
  advanced(first_num, sec_num)
end
