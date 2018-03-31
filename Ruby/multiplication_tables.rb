def ask_a_number
  print "Digite um numero para saber sua tabuada: "
  number = gets.strip.to_i
end

def multiplicate_number(numberWrited)
  for number in 1..10
    result = numberWrited * number
    puts "#{numberWrited} x #{number} = #{result}"
  end
end

# Begin

multiplicate_number(ask_a_number)
