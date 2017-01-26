def menu
  puts 'Welcome to the Ruby Calculator'
  first_number
end 
 
def first_number     
  puts 'What is the First Number?'
  @first = gets.chomp
  if @first != '0' && @first.to_i == 0
    puts'Invalid Input. Try again.'
    first_number
  else
    @first = @first.to_i
    operator 
  end
end

def operator
  math = ['+', '-', '*', '/']
  puts 'What is the operator?'
  @op_input = gets.chomp
  if math.include? @op_input
    second_number
  else
    puts "Operator #{@op_input} is not supported. I only support #{math}. Please try again."
    operator
  end
end 

def second_number
  puts 'What is the Second Number?' 
  @second = gets.chomp 
  if @second != '0' && @second.to_i == 0
    puts'Invalid Input. Try again.'
    second_number
  else
    @second = @second.to_i
    result 
  end
end 

def result
  puts 'Calculating....'
  case @op_input 
  when '+'
    @answer = @first + @second 
  when '-'
    @answer = @first - @second 
  when '*'
    @answer = @first * @second 
  when '/'
    @answer = @first / @second
  end 
  puts "The result of #{@first} #{@op_input} #{@second} is #{@answer}"
  first_number
end 

menu