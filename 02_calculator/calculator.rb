def add(num1,num2)
   num1+num2 
end

def subtract(num1,num2)
   num1-num2 
end

def sum(numbers)
    numbers.inject(0) { |sum, number| sum + number }
end

def multiply(*numbers)
    current_number = numbers.shift
    numbers.inject(current_number) { |current_number, number| current_number * number }
end

def power(num1,num2)
   num1 ** num2
end

def factorial(number)
    if number <= 2
        number
    else
        (1..number).inject(:*)
    end
end