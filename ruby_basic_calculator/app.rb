def calculator
  loop do
    puts "Enter first number"
    a = gets.to_f

    puts "Enter operator (+, -, *, /):"
    op = gets.chomp

    puts "Enter second number:"
    b = gets.to_f
    
    result = case op
            when "+"
              a + b
            when "-"
              a - b
            when "*"
              a * b
            when "/"
              b == 0 ? "Error: Division by zero" : a / b
            else
              "Unknown operator"
            end
            puts "Result: #{result}"
    
            puts "Do you want to calculate again? (y/n)"
            break if gets.chomp.downcase != "y"

  end
end

calculator