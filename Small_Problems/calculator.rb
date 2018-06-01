# ask the user for two numbers
# ask the user for an operation to perform
def prompt(str)
  puts '>> ' + str
end

def valid_number?(number)
  number == number.to_i.to_s || number == number.to_f.to_s
end

def valid_operator?(operator)
  '1234'.include?(operator)
end

def read_number(count)
  loop do
    prompt("What's the #{count} number?")
    num = gets.chomp
    break num if valid_number?(num)
    prompt("Hmmm... That doesn't look like a valid number")
  end
end

def read_operator
  loop do
    operator = gets.chomp
    break operator if valid_operator?(operator)
    prompt("Hmmm... That doesn't look like a valid operator")
  end
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Substracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end
prompt('Welcome to the calculator!')
loop do
  first = read_number('first')
  second = read_number('second')
  prompt(<<-EOL
  What operation would you like to perform?
  1) add
  2) substract
  3) multiply
  4) divide
  EOL
        )
  operator = read_operator
  result = case operator
           when '1'
             first.to_i + second.to_i
           when '2'
             first.to_i - second.to_i
           when '3'
             first.to_i * second.to_i
           when '4'
             first.to_f / second.to_f
           else
             break
           end
  prompt("#{operation_to_message(operator)} the two numbers...")
  prompt("The result is #{result}")
  prompt('Do you want to continue? (Y)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt('Thank you for using the calculator. Good bye!')
