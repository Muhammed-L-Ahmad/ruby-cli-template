require './calculator'

pp "what type of mathematical operation would you like to perform? addition, subtraction, multiplication or division?"

their_operation = gets.chomp

if their_operation == "addition"
  pp "what two numbers would you like to add?"
  numbers(a, b) = gets.chomp.to_i
  puts @sum(numbers)
end

elsif their_operation == "subtraction"
  pp "what two numbers would you like to subtract from one another?"
  numbers(a, b) = gets.chomp.to_i
  puts @difference(numbers)
end

elsif their_operation == "multiplication"
  pp "what two numbers would you like to multiply?"
  numbers(a, b) = gets.chomp.to_i
  puts @product(numbers)
  end

else
  pp "what numbers do you want to divide by one another?"
    numbers(a, b) = gets.chomp.to_i
    puts @dividend(numbers)
  end
