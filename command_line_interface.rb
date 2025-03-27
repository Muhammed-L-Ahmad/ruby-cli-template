require './calculator'

def valid_number?(input)
  input.to_i.to_s == input || input.to_f.to_s == input
end

def get_number(prompt)
  loop do
    print prompt
    input = gets.chomp
    return input.to_f if valid_number?(input)
    puts "Invalid input.  Please input a valid number."
  end
end

def get_operation
  loop do
    print "What type of mathematical operation would you like to perform? (addition, subtraction, multiplication, division): "
    operation = gets.chomp.downcase
    return operation if ["addition", "subtraction", "multiplication", "division"].include?(operation)
    puts "Invalid operation.  Please input either: addition, subtraction, multiplication, or division."
  end
end

calculator = Calculator.new

loop do
  operation = get_operation
  num1 = get_number("Enter the first number: ")
  num2 = get_number("Enter the second number: ")

  case operation
  when "addition"
    result = calculator.add(num1, num2)
  when "subtraction"
    result = calculator.subtract(num1, num2)
  when "multiplication"
    result = calculator.multiply(num1, num2)
  when "division"
    if num2 == 0
      puts "Error: Division by zero not valid."
      next
    else
      result = calculator.divide(num1, num2)
    end
  end

  puts "The result is: #{result}."

  print "Would you like to perform another calculation? (yes or no): "
  continue = gets.chomp.downcase
  break if continue != 'yes'
end

puts "Thanks for using the calculator!"
