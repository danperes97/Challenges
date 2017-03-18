def greeting
  puts
  puts "Ola Bem-vindo ao software de Numeros Impares e Pares!"
  puts
end

def verify_sequency(array)
  array.each do |number|
    if number.even?
      puts "#{number} >> Par"
    else
      puts "#{number} >> Impar"
    end
  end
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

  verify_sequency(get_sequency)
