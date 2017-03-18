require 'byebug'
def notas
  notas = {
          "100": 1,
          "50": 2,
          "20": 4,
          "10": 8,
          "5": 16,
          "1": 32,
          }
end

def maximo_disponivel
  dinheiro_disponivel = notas
  maximo = 0

  dinheiro_disponivel.each do |nota, quantidade|
    maximo += nota.to_s.to_i * quantidade
  end

  maximo
end

def mostra_maximo(maximo)
  puts "Digite a quantia que voce deseja. Maximo: #{maximo}"
end

def pede_quantia
  print "Digite a quantia que voĉe deseja sacar: "
  quantia = gets.strip.to_i

  quantia
end

def libera_dinheiro(quantia, dinheiro_disponivel)
  quantia = quantia
  resultado = []

  while quantia != 0
    dinheiro_disponivel.each do |nota, quantidade|
      for dinheiro in 1..quantidade
        if quantia - nota.to_s.to_i >= 0
          quantia = quantia - nota.to_s.to_i
          resultado << nota
        end
      end
    end
  end

  resultado
end

def mostra_dinheiro_sacado(dinheiro)
  byebug
  dinheiro = dinheiro

  dinheiro_retirado = dinheiro.group_by(&:itself).map { |nota, quantidade|  [nota , quantidade.size] }

  puts dinheiro_retirado
end

# Inicio
dinheiro_disponivel = notas
maximo = maximo_disponivel
mostra_maximo(maximo)
quantia = pede_quantia

dinheiro = libera_dinheiro(quantia, dinheiro_disponivel)
mostra_dinheiro_sacado(dinheiro)
