require './calculator'

pp "what type of mathematical operation would you like to perform? addition, subtraction, multiplication or division?"

their_operation = gets.chomp

if their_operation == "addition"
  pp "what two numbers would you like to add?"
  numbers(a, b) = gets.chomp.to_i
  puts @sum(numbers)
end

if their_operation == "subtraction"
  pp "what two numbers would you like to subtract from one another?"
  numbers(a, b) = gets.chomp.to_i
  puts @difference(numbers)
end
