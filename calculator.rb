def greeting
  puts
  puts "Ola Bem-vindo ao software Calculadora!"
  puts
end

def get_number_and_operation
  print "Digite um numero: "
  first_number = gets.strip.to_i

  print "Digite a Operação : (*)Multiplicação, (/)Divisão, (+)Soma, (-)Subtração"
  operation = gets.strip

  print "Digite um numero: "
  last_number = gets.strip.to_i

  array = [first_number, operation, last_number]
end

def resultado(array)
  case array[1]
    when "*"
      resultado = array[0] * array[2]
      puts "#{array[0]} X #{array[2]} = #{resultado}"
    when "/"
      resultado = array[0] / array[2]
      puts "#{array[0]} / #{array[2]} = #{resultado}"
    when "+"
      resultado = array[0] + array[2]
      puts "#{array[0]} + #{array[2]} = #{resultado}"
    when "-"
      resultado = array[0] - array[2]
      puts "#{array[0]} - #{array[2]} = #{resultado}"
  end
end

# Inicio

greeting

puts resultado(get_number_and_operation)
