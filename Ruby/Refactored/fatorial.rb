class Fatorial
  def self.calculate(number)
    (1..number).reduce(&:*)
  end
end
