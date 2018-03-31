def fat(number)
  (1..number).inject { |acc, n| acc * n }
end

def ask_a_number
  print "Put a number: "
  number = gets.strip.to_i
end

def print_result(number)
  fat_number = fat(number)

  puts
  puts "Fatorial de #{number}! é = #{fat_number}"
end

# Begin

print_result(ask_a_number)
