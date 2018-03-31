def greeting
  puts
  puts "Ola Bem-vindo ao software de Soma de Sequencia de numeros!"
  puts
end

def sum_sequency(array)
  sum = 0
  array.each do |number|
    sum += number
  end

  puts "Resultado = #{sum}"
end

def get_sequency
  print "De: "
  first_number = gets.strip.to_i
  print "Até: "
  last_number = gets.strip.to_i

  array = (first_number..last_number).to_a
end

# Inicio do software
  greeting

  sum_sequency(get_sequency)
