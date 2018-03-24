class EvenOddCalculator
  def self.even_or_odd?(number)
    number.even? ? :even : :odd
  end

  def self.list_maker(list)
    list.map { |number| self.even_or_odd?(number) }
  end
end
