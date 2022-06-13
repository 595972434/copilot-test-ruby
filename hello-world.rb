## create an array with 10 random numbers
## print the array
def random_numbers
  numbers = []
  10.times do
    numbers << rand(1..100)
  end
  numbers
end

## order the array from smallest to largest
def order_numbers(numbers)
    numbers.sort
    end


## convert the elements of the array to strings
def string_numbers(numbers)
  numbers.map { |number| number.to_s }
end

## call random_numbers, order_numbers, and string_numbers
## print the result
numbers = random_numbers
ordered_numbers = order_numbers(numbers)
string_numbers = string_numbers(ordered_numbers)
puts string_numbers